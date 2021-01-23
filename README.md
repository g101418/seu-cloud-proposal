# 东南大学云计算开题报告模板

东南大学云计算课题组开题报告模板LaTeX版

---

## 预览

[PDF样例](https://github.com/g101418/seu-cloud-proposal/blob/main/%E4%B8%9C%E5%8D%97%E5%A4%A7%E5%AD%A6%E8%AE%A1%E7%AE%97%E6%9C%BA%E4%BA%91%E8%AE%A1%E7%AE%97%E5%BC%80%E9%A2%98%E6%8A%A5%E5%91%8A%E6%A0%B7%E4%BE%8B.pdf)

## 整体介绍

```
.
├── Biblio
│   └── ref.bib
├── Img
│   ├── xxx.png
│   ├── xxx.png
│   └── ......
├── Style
│   └── seucloud.cls
├── Tex
│   ├── chap_background.tex
│   ├── chap_content.tex
│   ├── chap_expected.tex
│   ├── chap_target.tex
│   ├── chap_schedule.tex
│   ├── chap_scheme.tex
│   ├── chap_status.tex
│   ├── chap_system.tex
│   ├── referencespage.tex
│   ├── coverpage.tex
│   └── firstpage.tex
└── 开题报告.tex
```

- Biblio下存放引用文献，在ref.bib中保存BibTeX格式文档。请注意各类特殊符号如：$ & _ 等

- Img下存放所有图片

- Style下为cls文件，请勿改动

- Tex下存放所有tex文件，*coverpage.tex*、*firstpage.tex*及*chap_references.tex*请勿改动

- **开题报告.tex**是模板入口，其中内容一般不要变动

Tex文件下：

- chap_background.tex：研究背景
- chap_status.tex：研究现状
- chap_target.tex：研究目标
- chap_content.tex：研究内容
- chap_scheme.tex：技术路线
- chap_system.tex：系统设计与实现
- chap_expected.tex：预期成果
- chap_schedule.tex：进度安排

## 详细介绍

**开题报告.tex**中，请按照提示填写相关信息。剩余内容尽量不要改动。绝大部分内容在Tex下相关文件填写。

### 调用

#### \insertgraph  插入单张图

##### 参数

1. 图片文件名称（默认都在Img/下）

2. 图片的标题

3. 图片label

4. 图片宽度（页宽的倍数，如0.5）（可选参数）

##### 例子

```latex
\insertgraph{example.png}{样例图}{Fig:example}[0.5]
```

或

```latex
\insertgraph{example.png}{样例图}{Fig:example}
```

#### \inserttwograph  同时插入两张图

##### 参数

1. 图片(a)文件名称（默认都在Img/下）
2. 图片(b)文件名称（默认都在Img/下）
3. 图片的标题（两张图合并为一的大图）
4. 图片label（两张图合并为一的大图）
5. 图片(a)的标题
6. 图片(b)的标题
7. 图片(a)的宽度（可选参数）
8. 图片(b)的宽度（可选参数）

##### 例子

```latex
\inserttwograph{hardware.png}{software.png}{软硬件配置}{Fig:configuration}{硬件配置}{软件配置}[0.4][0.4]
```

或

```latex
\inserttwograph{hardware.png}{software.png}{软硬件配置}{Fig:configuration}{硬件配置}{软件配置}
```

#### inserttable  插入表格

##### 参数

1. 表标题
2. 表label
3. tabular的结构和参数

##### 例子

```latex
\begin{inserttable}{系统部署的软件配置}{Tab:systemsoftware}
	{p{0.2\textwidth}<{\centering}p{0.4\textwidth}<{\centering}}
    \hline
    软件环境    &	实际配置    \\
    \hline
    程序语言    &	Python 3.7  \\
    开发工具    &	VS Code     \\
    \hline
\end{inserttable}
```

其中

```latex
p{0.2\textwidth}<{\centering}
```

意为该列占宽为页宽的0.2倍，如果需要取消人为设定宽度，可以将上述代码改为c（意为居中，自动调整宽度）

#### \challenge  挑战点标题

该标题为黑体四号字，无缩进

##### 参数

1. 挑战一、挑战二……
2. 挑战的标题

##### 例子

```latex
\challenge{挑战一}{巴拉巴拉巴拉}
```

#### \subtitle  强调式小标题

##### 参数

1. 编号，如1)、(1)、(a)……
2. 标题

##### 例子

```latex
\subtitle{1)}{巴拉巴拉巴拉}
```

#### enumerate  有序列表

##### 例子

```latex
\begin{enumerate}
    \item \textbf{AAAAAAAAAAAA：}巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉。
    \item \textbf{BBBBBBBBBBBB：}巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉。
    \item \textbf{CCCCCCCCCCCC：}巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉巴拉。
\end{enumerate}
```

### 提醒

如果要插入PPT绘制的矢量图，可以将PPT另存为pdf格式，随后使用带有剪切功能的pdf编辑器打开（Mac端如PDF Expert），将pdf文件裁剪为适当大小后（部分pdf编辑器裁剪后大小几乎没有变化，请搜索对应方案后压缩保存即可），即可用于LaTeX插入，方法与插入png等图片一样，只需要将后缀名改为.pdf即可。

