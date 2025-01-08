# filename sorting

ファイル名によるソートのサンプル

vscode, github は当然 unicode だが,  
windows exploler は自然順ソートと呼ばれる独自のソートが使われている

面倒

# unicode

\- hyphen  
. dot  
0 number  
A upper  
_ lowline  
a lower

# windows

. dot  
_ lowline  
0 number  
a lower  
A upper  
\- hyphen 

# ファイル名による構造化

諦めきれない

dot > number > upper ないし  
dot > number > lower は保存  
dot > number > upper/lower は不定

dot > lowline は保存  
ただし、その他の字が入るとき不定

lowline > lower は保存  
ただし、その他の字が入るとき不定

ある識別子に対し、その子は識別子が長くなる  
子は親の下にソートしてほしい

長い識別子は、親の識別子＋副識別子であり、ソート順は親のタイトルと副識別子によって決まる

一般に、タイトルと識別子では、タイトルのほうが上にくるようにする