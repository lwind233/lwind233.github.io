---
title: MCP vs Function calling
date: 2026-01-09T21:43:00
tags:
  - MCP
  - function calling
categories:
  - 大模型应用开发
---
问了半天GPT，算是简单弄明白了两者之间的关联

## Function calling

function calling侧重于大模型本身的能力，大模型生成指定json格式的输出以调用其他工具，这基本上就是function calling。

function calling的鲁棒性源自三个方面

1. 模型权重本身性能表现好，能够理解如何生成指定的json格式输出。
2. 大模型部署的推理平台（如ollama）可以通过调整logits来强制大模型按照指定格式输出。
3. MCP client会对大模型输出的格式进行检查，如果出现错误会提示大模型重新输出

## MCP

MCP（model context protocol）模型上下文协议，本质上是一种协议，用于实现大模型和工具之间的解耦合。

有了MCP协议，再也不用硬编码来告诉大模型有哪些工具可以调用，并费劲去解析大模型的输出、并根据输出去调用工具函数。

而是去根据可调用的工具去编写MCP server，MCP server负责告诉MCP client自己有什么工具可以被调用，它们的功能是什么，如何调用以及调用的结果格式是什么。MCP client会在大模型开始推理的时候将这些信息自动注入到prompt里。

这样大模型和需要调用的工具可以自由的调换，而不必重新编写大量的适配代码

相当于从用胶水粘木头到用榫卯拼接木头
