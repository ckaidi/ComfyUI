import subprocess
import sys
import os
import time
from datetime import datetime, timedelta

def find_and_kill_process_on_port(port):
    """
    查找占用指定端口的进程并结束它
    
    Args:
        port (int): 要检查的端口号
    
    Returns:
        bool: 如果找到并成功结束进程返回True，否则返回False
    """
    try:
        # 使用netstat命令查找占用端口的进程
        cmd = f"netstat -ano | findstr :{port}"
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        
        if result.returncode == 0 and result.stdout.strip():
            lines = result.stdout.strip().split('\n')
            pids = set()
            
            for line in lines:
                parts = line.split()
                if len(parts) >= 5:
                    # 获取PID（最后一列）
                    pid = parts[-1]
                    if pid.isdigit():
                        pids.add(pid)
            
            if pids:
                print(f"找到占用端口{port}的进程PID: {', '.join(pids)}")
                
                # 结束所有找到的进程
                for pid in pids:
                    try:
                        subprocess.run(f"taskkill /F /PID {pid}", shell=True, check=True)
                        print(f"成功结束进程 PID: {pid}")
                    except subprocess.CalledProcessError:
                        print(f"无法结束进程 PID: {pid}")
                
                return True
            else:
                print(f"端口{port}未被占用")
                return False
        else:
            print(f"端口{port}未被占用")
            return False
            
    except Exception as e:
        print(f"查找进程时出错: {e}")
        return False

def check_port_status(port):
    """
    检查指定端口是否有服务在运行
    
    Args:
        port (int): 要检查的端口号
    
    Returns:
        bool: 如果端口有服务运行返回True，否则返回False
    """
    try:
        cmd = f"netstat -ano | findstr :{port}"
        result = subprocess.run(cmd, shell=True, capture_output=True, text=True)
        
        if result.returncode == 0 and result.stdout.strip():
            lines = result.stdout.strip().split('\n')
            for line in lines:
                if f":{port}" in line and "LISTENING" in line:
                    return True
        return False
    except Exception:
        return False

def run_update_bat():
    """
    运行update.bat文件
    
    Returns:
        bool: 如果成功运行返回True，否则返回False
    """
    try:
        # 获取当前脚本所在目录
        current_dir = os.path.dirname(os.path.abspath(__file__))
        update_bat_path = os.path.join(current_dir, "update.bat")
        
        if not os.path.exists(update_bat_path):
            print(f"update.bat文件不存在: {update_bat_path}")
            return False
        
        print(f"正在运行update.bat: {update_bat_path}")
        
        # 运行update.bat文件（非阻塞方式）
        process = subprocess.Popen(update_bat_path, shell=True, cwd=current_dir)
        print(f"update.bat已启动，进程ID: {process.pid}")
        return True
            
    except Exception as e:
        print(f"运行update.bat时出错: {e}")
        return False

def monitor_port(port, check_interval=10):
    """
    监控指定端口，每隔指定时间检查一次
    
    Args:
        port (int): 要监控的端口号
        check_interval (int): 检查间隔（秒）
    """
    print(f"开始监控端口{port}，每{check_interval}秒检查一次...")
    print("按 Ctrl+C 停止监控")
    
    try:
        while True:
            if check_port_status(port):
                print(f"✓ 端口{port}有服务正在运行")
                break
            else:
                print(f"○ 端口{port}暂无服务运行，{check_interval}秒后再次检查...")
            
            time.sleep(check_interval)
    except KeyboardInterrupt:
        print("\n监控已停止")

def main():
    """
    主函数：查找并结束占用8188端口的进程，运行update.bat，然后监控8188端口
    """
    print("开始检查端口8188...")
    
    # 查找并结束占用8188端口的进程
    killed = find_and_kill_process_on_port(8188)
    
    if killed:
        print("等待2秒确保进程完全结束...")
        time.sleep(2)
    
    # 运行update.bat
    print("\n开始运行update.bat...")
    success = run_update_bat()
    
    if success:
        print("\nupdate.bat已启动，开始监控端口8188...")
        # 等待一下让update.bat有时间启动
        time.sleep(3)
        # 开始监控8188端口
        monitor_port(8188, 10)
        print("\n检测到8188端口服务已启动，所有操作完成！")
    else:
        print("\nupdate.bat启动失败！")
        sys.exit(1)

def calculate_next_3am():
    """
    计算下一个凌晨3点的时间
    
    Returns:
        datetime: 下一个凌晨3点的时间
    """
    now = datetime.now()
    # 今天凌晨3点
    today_3am = now.replace(hour=3, minute=0, second=0, microsecond=0)
    
    # 如果现在已经过了今天凌晨3点，则计算明天凌晨3点
    if now >= today_3am:
        next_3am = today_3am + timedelta(days=1)
    else:
        next_3am = today_3am
    
    return next_3am

def wait_until_3am():
    """
    等待到下一个凌晨3点，并添加0-30分钟的随机延迟以错开重启
    """
    import random
    
    # 添加0-30分钟的随机延迟
    random_delay_minutes = random.randint(0, 30)
    random_delay_seconds = random_delay_minutes * 60
    
    next_3am = calculate_next_3am()
    # 在凌晨3点基础上添加随机延迟
    next_3am_with_delay = next_3am + timedelta(seconds=random_delay_seconds)
    
    now = datetime.now()
    wait_seconds = (next_3am_with_delay - now).total_seconds()
    
    print(f"当前时间: {now.strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"原定运行时间: {next_3am.strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"随机延迟: {random_delay_minutes} 分钟")
    print(f"实际运行时间: {next_3am_with_delay.strftime('%Y-%m-%d %H:%M:%S')}")
    print(f"等待时间: {wait_seconds/3600:.1f} 小时")
    
    # 分段等待，每小时显示一次剩余时间
    while wait_seconds > 0:
        if wait_seconds > 3600:  # 如果剩余时间超过1小时
            time.sleep(3600)  # 等待1小时
            wait_seconds -= 3600
            hours_left = wait_seconds / 3600
            print(f"剩余等待时间: {hours_left:.1f} 小时")
        else:
            time.sleep(wait_seconds)
            break

if __name__ == "__main__":
    print("=== ComfyUI 自动更新和启动脚本 ===")
    print("第一次运行，立即执行...")
    
    # 第一次直接运行
    main()
    
    # 之后每日凌晨3点运行
    while True:
        print("\n=== 等待下次定时运行 ===")
        wait_until_3am()
        
        print("\n=== 定时运行开始 ===")
        print(f"当前时间: {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
        main()