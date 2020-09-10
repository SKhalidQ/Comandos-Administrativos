using System;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;

using Windows.UI.Xaml.Controls;

namespace Comandos_Administrativos.Views
{
    public sealed partial class MainPage : Page, INotifyPropertyChanged
    {
        public MainPage()
        {
            InitializeComponent();
        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void Set<T>(ref T storage, T value, [CallerMemberName]string propertyName = null)
        {
            if (Equals(storage, value))
            {
                return;
            }

            storage = value;
            OnPropertyChanged(propertyName);
        }

        private void OnPropertyChanged(string propertyName) => PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));

        private void IP_Information_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            ResultBox.Text = ExecuteCommand("ipconfig /all");
        }

        private void ActivateAdminAccount_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            ResultBox.Text += ExecuteCommand("net user administrador /active:yes");
        }

        private void DeactivateAdminAccount_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            ResultBox.Text += ExecuteCommand("net user administrador /active:no");
        }

        private void WindowsVersion_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            ResultBox.Text += ExecuteCommand("systeminfo | findstr /C:\"OS\"");
        }

        private void Key_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            ResultBox.Text += ExecuteCommand("wmic os get \"SerialNumber\" | find /v \"SerialNumber\"");
        }

        private void FullInfo_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            ResultBox.Text += ExecuteCommand("systeminfo");
        }

        private void ClearButton_Click(object sender, Windows.UI.Xaml.RoutedEventArgs e)
        {
            ResultBox.Text = "";
        }

        private static string ExecuteCommand(string command)
        {
            using (Process cmd = new Process())
            {
                cmd.StartInfo.FileName = "cmd.exe";
                cmd.StartInfo.RedirectStandardInput = true;
                cmd.StartInfo.RedirectStandardOutput = true;
                cmd.StartInfo.CreateNoWindow = true;
                cmd.StartInfo.UseShellExecute = false;
                cmd.Start();
                cmd.StandardInput.WriteLine(command);
                cmd.StandardInput.Flush();
                cmd.StandardInput.Close();
                cmd.WaitForExit();
                return $"\n{cmd.StandardOutput.ReadToEnd()}\n";
            }
        }
    }
}
