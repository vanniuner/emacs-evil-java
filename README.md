![image](![img](https://github.com/vanniuner/emacs-evil-java/blob/master/Screenshot%20from%202020-03-29%2013-17-51.png))


# 插件列表

1.  evil
2.  evil-easymotion
3.  evil-leader
4.  evil-surround
5.  evil-org
6.  org-pomodoro
7.  neotree
8.  lsp-java
9.  ejc-sql
10. spaceline
11. swiper
12. smex
13. gruvbox-theme


# 快捷键


## evil-easymotion

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">SPC %character%</td>
<td class="org-left">跳转到 %character%</td>
</tr>
</tbody>
</table>


## evil-leader

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">leader</td>
<td class="org-left">key [;]</td>
</tr>


<tr>
<td class="org-left">"w"</td>
<td class="org-left">'save-buffer</td>
</tr>


<tr>
<td class="org-left">"q"</td>
<td class="org-left">'kill-current-buffer</td>
</tr>


<tr>
<td class="org-left">"d"</td>
<td class="org-left">'delete-other-windows</td>
</tr>


<tr>
<td class="org-left">"6"</td>
<td class="org-left">'dap-continue</td>
</tr>


<tr>
<td class="org-left">"2"</td>
<td class="org-left">'dap-next</td>
</tr>


<tr>
<td class="org-left">"j"</td>
<td class="org-left">'next-multiframe-window</td>
</tr>


<tr>
<td class="org-left">"4"</td>
<td class="org-left">'dap-breakpoint-toggle</td>
</tr>


<tr>
<td class="org-left">"5"</td>
<td class="org-left">'dap-ui-repl</td>
</tr>


<tr>
<td class="org-left">"t"</td>
<td class="org-left">'insert-translated-name-replace-with-camel</td>
</tr>


<tr>
<td class="org-left">"k"</td>
<td class="org-left">'ejc-describe-table</td>
</tr>


<tr>
<td class="org-left">"i"</td>
<td class="org-left">'lsp-java-add-import</td>
</tr>


<tr>
<td class="org-left">"s"</td>
<td class="org-left">'evil-surround-region</td>
</tr>
</tbody>
</table>


## evil-surround

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">选中内容</td>
<td class="org-left">;s</td>
</tr>


<tr>
<td class="org-left">;s + %symbol%</td>
<td class="org-left">evil-surround-region</td>
</tr>
</tbody>
</table>


## neotree

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">F2</td>
<td class="org-left">打开/关闭 neotree 窗口</td>
</tr>


<tr>
<td class="org-left">M-1</td>
<td class="org-left">打开neotree并选中当前节点</td>
</tr>
</tbody>
</table>


## lsp-java

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">;i</td>
<td class="org-left">自动import</td>
</tr>


<tr>
<td class="org-left">M-i</td>
<td class="org-left">跳转到实现代码块</td>
</tr>


<tr>
<td class="org-left">M-d</td>
<td class="org-left">跳转到定义代码块</td>
</tr>


<tr>
<td class="org-left">M-x > dap-debug > JavaAttach</td>
<td class="org-left">远程断点链接</td>
</tr>


<tr>
<td class="org-left">;5</td>
<td class="org-left">打开交互命令行，可trace当前断点下内存变量</td>
</tr>


<tr>
<td class="org-left">;4</td>
<td class="org-left">当前行切换为断点</td>
</tr>


<tr>
<td class="org-left">;6</td>
<td class="org-left">跳转到下一个断点</td>
</tr>


<tr>
<td class="org-left">;2</td>
<td class="org-left">断点跳过</td>
</tr>
</tbody>
</table>


### 代码补全颜色设置

    ;; 自行尝试
    '(company-tooltip-annotation ((t (:foreground "#FFA500"))))
    '(company-tooltip-annotation-selection ((t (:foreground "#2F4F4F"))))
    '(company-tooltip-common ((t (:foreground "#E6E6FA"))))
    '(company-tooltip-common-selection ((t (:foreground "#800000"))))
    '(company-tooltip ((t (:background "#44475a" :foreground "#E1FFFF"))))
    '(company-tooltip-selection ((t (:background "#FFE66F" :foreground "#000000"))))


## ejc-sql

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">M-x ejc-connection</td>
<td class="org-left">链接数据库</td>
</tr>


<tr>
<td class="org-left">C-c C-c</td>
<td class="org-left">执行sql</td>
</tr>
</tbody>
</table>

    (ejc-create-connection
    "test"
    :classpath (concat "~/.m2/repository/com/oracle"
                        "/ojdbc6/11.2.0.3/ojdbc6-11.2.0.3.jar")
    :dbtype "oracle"
    :dbname "orcl"
    :host "--------------"
    :port "1521"
    :user "-------"
    :password "-----------"
    ;; 使用xml标签分割sql
    :separator "</?\.*>")

    -- 执行一次查询
    <SELECT name='for _ORG'>
        select * from  PROJECT_INFO
    </SELECT>
    -- 一次执行多条记录
    <CREATE name='for _ORG'>
        delimiter ;
        insert into PROJECT_INFO (project_code,period,unpaid) values('102000034','2020-02-02',2.3);
        insert into PROJECT_INFO (project_code,period,unpaid) values('102000035','2020-02-02',2.3);
        insert into PROJECT_INFO (project_code,period,unpaid) values('102000034','2020-02-02',2.3);
    </CREATE>


## spaceline


### 设置evil状态颜色

    '(spaceline-evil-emacs ((t (:background "#6272a4" :foreground "#f8f8f2"))))
    '(spaceline-evil-insert ((t (:background "#77A498" :foreground "#f8f8f2"))))
    '(spaceline-evil-motion ((t (:background "#696969" :foreground "#f8f8f2"))))
    '(spaceline-evil-normal ((t (:background "#5B5B5B" :foreground "#f8f8f2"))))
    '(spaceline-evil-replace ((t (:background "#FF8C0" :foreground "#f8f8f2"))))
    '(spaceline-evil-visual ((t (:background "#FF8C00" :foreground "#f8f8f2"))))


### 设置spaceline 分割符形状

    ;; 选择一个
     ("A" (setq powerline-default-separator 'alternate) "alternate")
     ("a" (setq powerline-default-separator 'arrow) "arrow")
     ("f" (setq powerline-default-separator 'arrow-fade) "arrow-fade")
     ("|" (setq powerline-default-separator 'bar) "bar")
     ("b" (setq powerline-default-separator 'box) "box")
     ("[" (setq powerline-default-separator 'brace) "brace")
     ("B" (setq powerline-default-separator 'butt) "butt")
     ("c" (setq powerline-default-separator 'chamfer) "chamfer")
     ("C" (setq powerline-default-separator 'contour) "contour")
     ("(" (setq powerline-default-separator 'curve) "curve")
     (")" (setq powerline-default-separator 'rounded) "rounded")
     ("]" (setq powerline-default-separator 'roundstub) "roundstub")
     ("/" (setq powerline-default-separator 'slant) "slant")
     ("w" (setq powerline-default-separator 'wave) "wave")
     ("z" (setq powerline-default-separator 'zigzag) "zigzag")
     ("u" (setq powerline-default-separator 'utf-8) "utf-8")
     ("n" (setq powerline-default-separator 'nil) "none"))

