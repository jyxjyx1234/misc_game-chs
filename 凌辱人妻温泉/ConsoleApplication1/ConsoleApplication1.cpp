// ConsoleApplication1.cpp : 此文件包含 "main" 函数。程序执行将在此处开始并结束。
//

#include <iostream>

#include <iostream>  
#include <fstream>  
#include <vector>  
#include <string>  

void replaceFileData(const std::string& draggedFile, const std::string& targetFile, const std::string& outputFile) {  
   const std::streampos startOffset = 0x8000;  
   const std::streampos length = 0x208000;  

   // Open dragged file  
   std::ifstream draggedFileStream(draggedFile, std::ios::binary);  
   if (!draggedFileStream) {  
       std::cerr << "无法打开拖入的文件: " << draggedFile << std::endl;  
	   std::cin.get();  // 等待用户输入以查看错误信息
       return;  
   }  

   // Read data from dragged file  
   std::vector<char> draggedData(length);  
   draggedFileStream.seekg(startOffset);  
   draggedFileStream.read(draggedData.data(), length);  
   draggedFileStream.close();  

   // Open target file  
   //std::fstream targetFileStream(targetFile, std::ios::in | std::ios::out | std::ios::binary);  
   //if (!targetFileStream) {  
   //    std::cerr << "无法打开目标文件: " << targetFile << std::endl;  
   //    return;  
   //}  

   // Replace data in target file  

   // Save to new file  
   std::ifstream targetFileInput(targetFile, std::ios::binary);  
   std::ofstream outputFileStream(outputFile, std::ios::binary);  
   outputFileStream << targetFileInput.rdbuf();
   outputFileStream.seekp(startOffset);
   outputFileStream.write(draggedData.data(), length);
   outputFileStream.close();
   targetFileInput.close();  

   std::cout << "替换完成，保存到: " << outputFile << std::endl;
   std::string a;
   std::cin >> a;  // 等待用户输入以查看错误信息
}  

int main() {  
   std::cout << "将原有存档的GR.CHS（如果之前使用的ai翻译补丁）或GR.056（如果之前在生肉上进行游戏）拖入窗口，路径中不要有空格，然后按回车继续。" << std::endl;  
   std::string draggedFilePath;  
   std::cout << "文件路径: ";  
   std::cin >> draggedFilePath;

   std::cout << "将需要注入存档的GR.CHS拖入窗口，路径中不要有空格，然后按回车继续。" << std::endl;
   std::string targetFilePath;
   std::cout << "文件路径: ";
   std::cin >> targetFilePath;

   //const std::string targetFilePath = "GR.CHS";  
   const std::string outputFilePath = "GR.CHS.NEW";

   replaceFileData(draggedFilePath, targetFilePath, outputFilePath);  

   return 0;  
}

// 运行程序: Ctrl + F5 或调试 >“开始执行(不调试)”菜单
// 调试程序: F5 或调试 >“开始调试”菜单

// 入门使用技巧: 
//   1. 使用解决方案资源管理器窗口添加/管理文件
//   2. 使用团队资源管理器窗口连接到源代码管理
//   3. 使用输出窗口查看生成输出和其他消息
//   4. 使用错误列表窗口查看错误
//   5. 转到“项目”>“添加新项”以创建新的代码文件，或转到“项目”>“添加现有项”以将现有代码文件添加到项目
//   6. 将来，若要再次打开此项目，请转到“文件”>“打开”>“项目”并选择 .sln 文件
