#edit
if [ "$1" = "-E" ]; then
	tmux split-window -h
	tmux resize-pane -R 35
	tmux split-window -v
	tmux select-pane -t 0
	tmux split-window -v
	tmux resize-pane -D 15
	tmux select-pane -t 0
fi

#Quarter
if [ "$1" = "-Q" ]; then
	tmux split-window -v
	tmux split-window -h
	tmux select-pane -t 0
	tmux split-window -h
	tmux select-pane -t 0

	tmux next-layout
	tmux next-layout
	tmux next-layout
fi

#monitor
if [ "$1" = "-M" ]; then
	tmux split-window -v
	tmux split-window -h
	tmux select-pane -t 0
	tmux split-window -h

	tmux select-pane -t 0
	tmux split-window -h
	tmux select-pane -t 2
	tmux split-window -h
	tmux select-pane -t 4
	tmux split-window -h
	tmux select-pane -t 6
	tmux split-window -h

	tmux select-pane -t 0

	tmux next-layout
	tmux next-layout
	tmux next-layout
	tmux next-layout
	tmux next-layout
fi

if [ "$1" = "-R50" ]; then
	ssh -p 9922 zhengzn@10.1.74.50
fi

if [ "$1" = "-R51" ]; then
	ssh -p 9922 zhengzn@10.1.74.51
fi

if [ "$1" = "-R52" ]; then
	ssh -p 9922 zhengzn@10.1.74.52
fi

#remote cmd without interaction
#ssh -p 9922 zhengzn@10.1.74.50 'ls /home/zhengzn/local/myproject'

#remote cmd with interaction
#ssh -p 9922 zhengzn@10.1.74.50 -t 'tail -f /home/zhengzn/local/myproject/tt.log'
