bits 32

extern handle_trap

section .text

global vector0
vector0:
    pushad
    push 0
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector1
vector1:
    pushad
    push 1
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector2
vector2:
    pushad
    push 2
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector3
vector3:
    pushad
    push 3
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector4
vector4:
    pushad
    push 4
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector5
vector5:
    pushad
    push 5
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector6
vector6:
    pushad
    push 6
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector7
vector7:
    pushad
    push 7
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector8
vector8:
    pushad
    push 8
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector9
vector9:
    pushad
    push 9
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector10
vector10:
    pushad
    push 10
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector11
vector11:
    pushad
    push 11
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector12
vector12:
    pushad
    push 12
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector13
vector13:
    pushad
    push 13
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector14
vector14:
    pushad
    push 14
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector15
vector15:
    pushad
    push 15
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector16
vector16:
    pushad
    push 16
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector17
vector17:
    pushad
    push 17
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector18
vector18:
    pushad
    push 18
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector19
vector19:
    pushad
    push 19
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector20
vector20:
    pushad
    push 20
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector21
vector21:
    pushad
    push 21
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector22
vector22:
    pushad
    push 22
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector23
vector23:
    pushad
    push 23
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector24
vector24:
    pushad
    push 24
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector25
vector25:
    pushad
    push 25
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector26
vector26:
    pushad
    push 26
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector27
vector27:
    pushad
    push 27
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector28
vector28:
    pushad
    push 28
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector29
vector29:
    pushad
    push 29
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector30
vector30:
    pushad
    push 30
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector31
vector31:
    pushad
    push 31
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector32
vector32:
    pushad
    push 32
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector33
vector33:
    pushad
    push 33
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector34
vector34:
    pushad
    push 34
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector35
vector35:
    pushad
    push 35
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector36
vector36:
    pushad
    push 36
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector37
vector37:
    pushad
    push 37
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector38
vector38:
    pushad
    push 38
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector39
vector39:
    pushad
    push 39
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector40
vector40:
    pushad
    push 40
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector41
vector41:
    pushad
    push 41
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector42
vector42:
    pushad
    push 42
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector43
vector43:
    pushad
    push 43
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector44
vector44:
    pushad
    push 44
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector45
vector45:
    pushad
    push 45
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector46
vector46:
    pushad
    push 46
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector47
vector47:
    pushad
    push 47
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector48
vector48:
    pushad
    push 48
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector49
vector49:
    pushad
    push 49
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector50
vector50:
    pushad
    push 50
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector51
vector51:
    pushad
    push 51
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector52
vector52:
    pushad
    push 52
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector53
vector53:
    pushad
    push 53
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector54
vector54:
    pushad
    push 54
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector55
vector55:
    pushad
    push 55
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector56
vector56:
    pushad
    push 56
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector57
vector57:
    pushad
    push 57
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector58
vector58:
    pushad
    push 58
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector59
vector59:
    pushad
    push 59
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector60
vector60:
    pushad
    push 60
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector61
vector61:
    pushad
    push 61
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector62
vector62:
    pushad
    push 62
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector63
vector63:
    pushad
    push 63
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector64
vector64:
    pushad
    push 64
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector65
vector65:
    pushad
    push 65
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector66
vector66:
    pushad
    push 66
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector67
vector67:
    pushad
    push 67
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector68
vector68:
    pushad
    push 68
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector69
vector69:
    pushad
    push 69
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector70
vector70:
    pushad
    push 70
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector71
vector71:
    pushad
    push 71
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector72
vector72:
    pushad
    push 72
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector73
vector73:
    pushad
    push 73
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector74
vector74:
    pushad
    push 74
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector75
vector75:
    pushad
    push 75
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector76
vector76:
    pushad
    push 76
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector77
vector77:
    pushad
    push 77
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector78
vector78:
    pushad
    push 78
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector79
vector79:
    pushad
    push 79
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector80
vector80:
    pushad
    push 80
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector81
vector81:
    pushad
    push 81
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector82
vector82:
    pushad
    push 82
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector83
vector83:
    pushad
    push 83
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector84
vector84:
    pushad
    push 84
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector85
vector85:
    pushad
    push 85
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector86
vector86:
    pushad
    push 86
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector87
vector87:
    pushad
    push 87
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector88
vector88:
    pushad
    push 88
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector89
vector89:
    pushad
    push 89
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector90
vector90:
    pushad
    push 90
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector91
vector91:
    pushad
    push 91
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector92
vector92:
    pushad
    push 92
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector93
vector93:
    pushad
    push 93
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector94
vector94:
    pushad
    push 94
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector95
vector95:
    pushad
    push 95
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector96
vector96:
    pushad
    push 96
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector97
vector97:
    pushad
    push 97
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector98
vector98:
    pushad
    push 98
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector99
vector99:
    pushad
    push 99
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector100
vector100:
    pushad
    push 100
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector101
vector101:
    pushad
    push 101
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector102
vector102:
    pushad
    push 102
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector103
vector103:
    pushad
    push 103
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector104
vector104:
    pushad
    push 104
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector105
vector105:
    pushad
    push 105
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector106
vector106:
    pushad
    push 106
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector107
vector107:
    pushad
    push 107
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector108
vector108:
    pushad
    push 108
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector109
vector109:
    pushad
    push 109
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector110
vector110:
    pushad
    push 110
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector111
vector111:
    pushad
    push 111
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector112
vector112:
    pushad
    push 112
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector113
vector113:
    pushad
    push 113
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector114
vector114:
    pushad
    push 114
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector115
vector115:
    pushad
    push 115
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector116
vector116:
    pushad
    push 116
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector117
vector117:
    pushad
    push 117
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector118
vector118:
    pushad
    push 118
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector119
vector119:
    pushad
    push 119
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector120
vector120:
    pushad
    push 120
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector121
vector121:
    pushad
    push 121
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector122
vector122:
    pushad
    push 122
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector123
vector123:
    pushad
    push 123
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector124
vector124:
    pushad
    push 124
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector125
vector125:
    pushad
    push 125
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector126
vector126:
    pushad
    push 126
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector127
vector127:
    pushad
    push 127
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector128
vector128:
    pushad
    push 128
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector129
vector129:
    pushad
    push 129
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector130
vector130:
    pushad
    push 130
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector131
vector131:
    pushad
    push 131
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector132
vector132:
    pushad
    push 132
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector133
vector133:
    pushad
    push 133
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector134
vector134:
    pushad
    push 134
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector135
vector135:
    pushad
    push 135
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector136
vector136:
    pushad
    push 136
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector137
vector137:
    pushad
    push 137
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector138
vector138:
    pushad
    push 138
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector139
vector139:
    pushad
    push 139
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector140
vector140:
    pushad
    push 140
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector141
vector141:
    pushad
    push 141
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector142
vector142:
    pushad
    push 142
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector143
vector143:
    pushad
    push 143
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector144
vector144:
    pushad
    push 144
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector145
vector145:
    pushad
    push 145
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector146
vector146:
    pushad
    push 146
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector147
vector147:
    pushad
    push 147
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector148
vector148:
    pushad
    push 148
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector149
vector149:
    pushad
    push 149
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector150
vector150:
    pushad
    push 150
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector151
vector151:
    pushad
    push 151
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector152
vector152:
    pushad
    push 152
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector153
vector153:
    pushad
    push 153
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector154
vector154:
    pushad
    push 154
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector155
vector155:
    pushad
    push 155
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector156
vector156:
    pushad
    push 156
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector157
vector157:
    pushad
    push 157
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector158
vector158:
    pushad
    push 158
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector159
vector159:
    pushad
    push 159
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector160
vector160:
    pushad
    push 160
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector161
vector161:
    pushad
    push 161
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector162
vector162:
    pushad
    push 162
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector163
vector163:
    pushad
    push 163
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector164
vector164:
    pushad
    push 164
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector165
vector165:
    pushad
    push 165
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector166
vector166:
    pushad
    push 166
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector167
vector167:
    pushad
    push 167
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector168
vector168:
    pushad
    push 168
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector169
vector169:
    pushad
    push 169
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector170
vector170:
    pushad
    push 170
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector171
vector171:
    pushad
    push 171
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector172
vector172:
    pushad
    push 172
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector173
vector173:
    pushad
    push 173
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector174
vector174:
    pushad
    push 174
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector175
vector175:
    pushad
    push 175
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector176
vector176:
    pushad
    push 176
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector177
vector177:
    pushad
    push 177
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector178
vector178:
    pushad
    push 178
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector179
vector179:
    pushad
    push 179
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector180
vector180:
    pushad
    push 180
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector181
vector181:
    pushad
    push 181
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector182
vector182:
    pushad
    push 182
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector183
vector183:
    pushad
    push 183
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector184
vector184:
    pushad
    push 184
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector185
vector185:
    pushad
    push 185
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector186
vector186:
    pushad
    push 186
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector187
vector187:
    pushad
    push 187
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector188
vector188:
    pushad
    push 188
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector189
vector189:
    pushad
    push 189
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector190
vector190:
    pushad
    push 190
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector191
vector191:
    pushad
    push 191
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector192
vector192:
    pushad
    push 192
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector193
vector193:
    pushad
    push 193
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector194
vector194:
    pushad
    push 194
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector195
vector195:
    pushad
    push 195
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector196
vector196:
    pushad
    push 196
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector197
vector197:
    pushad
    push 197
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector198
vector198:
    pushad
    push 198
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector199
vector199:
    pushad
    push 199
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector200
vector200:
    pushad
    push 200
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector201
vector201:
    pushad
    push 201
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector202
vector202:
    pushad
    push 202
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector203
vector203:
    pushad
    push 203
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector204
vector204:
    pushad
    push 204
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector205
vector205:
    pushad
    push 205
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector206
vector206:
    pushad
    push 206
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector207
vector207:
    pushad
    push 207
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector208
vector208:
    pushad
    push 208
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector209
vector209:
    pushad
    push 209
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector210
vector210:
    pushad
    push 210
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector211
vector211:
    pushad
    push 211
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector212
vector212:
    pushad
    push 212
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector213
vector213:
    pushad
    push 213
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector214
vector214:
    pushad
    push 214
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector215
vector215:
    pushad
    push 215
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector216
vector216:
    pushad
    push 216
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector217
vector217:
    pushad
    push 217
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector218
vector218:
    pushad
    push 218
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector219
vector219:
    pushad
    push 219
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector220
vector220:
    pushad
    push 220
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector221
vector221:
    pushad
    push 221
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector222
vector222:
    pushad
    push 222
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector223
vector223:
    pushad
    push 223
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector224
vector224:
    pushad
    push 224
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector225
vector225:
    pushad
    push 225
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector226
vector226:
    pushad
    push 226
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector227
vector227:
    pushad
    push 227
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector228
vector228:
    pushad
    push 228
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector229
vector229:
    pushad
    push 229
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector230
vector230:
    pushad
    push 230
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector231
vector231:
    pushad
    push 231
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector232
vector232:
    pushad
    push 232
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector233
vector233:
    pushad
    push 233
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector234
vector234:
    pushad
    push 234
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector235
vector235:
    pushad
    push 235
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector236
vector236:
    pushad
    push 236
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector237
vector237:
    pushad
    push 237
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector238
vector238:
    pushad
    push 238
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector239
vector239:
    pushad
    push 239
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector240
vector240:
    pushad
    push 240
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector241
vector241:
    pushad
    push 241
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector242
vector242:
    pushad
    push 242
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector243
vector243:
    pushad
    push 243
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector244
vector244:
    pushad
    push 244
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector245
vector245:
    pushad
    push 245
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector246
vector246:
    pushad
    push 246
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector247
vector247:
    pushad
    push 247
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector248
vector248:
    pushad
    push 248
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector249
vector249:
    pushad
    push 249
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector250
vector250:
    pushad
    push 250
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector251
vector251:
    pushad
    push 251
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector252
vector252:
    pushad
    push 252
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector253
vector253:
    pushad
    push 253
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector254
vector254:
    pushad
    push 254
    cld
    call handle_trap
    add esp, 4
    popad
    iret

global vector255
vector255:
    pushad
    push 255
    cld
    call handle_trap
    add esp, 4
    popad
    iret


global vector_table
vector_table:
    dd vector0
    dd vector1
    dd vector2
    dd vector3
    dd vector4
    dd vector5
    dd vector6
    dd vector7
    dd vector8
    dd vector9
    dd vector10
    dd vector11
    dd vector12
    dd vector13
    dd vector14
    dd vector15
    dd vector16
    dd vector17
    dd vector18
    dd vector19
    dd vector20
    dd vector21
    dd vector22
    dd vector23
    dd vector24
    dd vector25
    dd vector26
    dd vector27
    dd vector28
    dd vector29
    dd vector30
    dd vector31
    dd vector32
    dd vector33
    dd vector34
    dd vector35
    dd vector36
    dd vector37
    dd vector38
    dd vector39
    dd vector40
    dd vector41
    dd vector42
    dd vector43
    dd vector44
    dd vector45
    dd vector46
    dd vector47
    dd vector48
    dd vector49
    dd vector50
    dd vector51
    dd vector52
    dd vector53
    dd vector54
    dd vector55
    dd vector56
    dd vector57
    dd vector58
    dd vector59
    dd vector60
    dd vector61
    dd vector62
    dd vector63
    dd vector64
    dd vector65
    dd vector66
    dd vector67
    dd vector68
    dd vector69
    dd vector70
    dd vector71
    dd vector72
    dd vector73
    dd vector74
    dd vector75
    dd vector76
    dd vector77
    dd vector78
    dd vector79
    dd vector80
    dd vector81
    dd vector82
    dd vector83
    dd vector84
    dd vector85
    dd vector86
    dd vector87
    dd vector88
    dd vector89
    dd vector90
    dd vector91
    dd vector92
    dd vector93
    dd vector94
    dd vector95
    dd vector96
    dd vector97
    dd vector98
    dd vector99
    dd vector100
    dd vector101
    dd vector102
    dd vector103
    dd vector104
    dd vector105
    dd vector106
    dd vector107
    dd vector108
    dd vector109
    dd vector110
    dd vector111
    dd vector112
    dd vector113
    dd vector114
    dd vector115
    dd vector116
    dd vector117
    dd vector118
    dd vector119
    dd vector120
    dd vector121
    dd vector122
    dd vector123
    dd vector124
    dd vector125
    dd vector126
    dd vector127
    dd vector128
    dd vector129
    dd vector130
    dd vector131
    dd vector132
    dd vector133
    dd vector134
    dd vector135
    dd vector136
    dd vector137
    dd vector138
    dd vector139
    dd vector140
    dd vector141
    dd vector142
    dd vector143
    dd vector144
    dd vector145
    dd vector146
    dd vector147
    dd vector148
    dd vector149
    dd vector150
    dd vector151
    dd vector152
    dd vector153
    dd vector154
    dd vector155
    dd vector156
    dd vector157
    dd vector158
    dd vector159
    dd vector160
    dd vector161
    dd vector162
    dd vector163
    dd vector164
    dd vector165
    dd vector166
    dd vector167
    dd vector168
    dd vector169
    dd vector170
    dd vector171
    dd vector172
    dd vector173
    dd vector174
    dd vector175
    dd vector176
    dd vector177
    dd vector178
    dd vector179
    dd vector180
    dd vector181
    dd vector182
    dd vector183
    dd vector184
    dd vector185
    dd vector186
    dd vector187
    dd vector188
    dd vector189
    dd vector190
    dd vector191
    dd vector192
    dd vector193
    dd vector194
    dd vector195
    dd vector196
    dd vector197
    dd vector198
    dd vector199
    dd vector200
    dd vector201
    dd vector202
    dd vector203
    dd vector204
    dd vector205
    dd vector206
    dd vector207
    dd vector208
    dd vector209
    dd vector210
    dd vector211
    dd vector212
    dd vector213
    dd vector214
    dd vector215
    dd vector216
    dd vector217
    dd vector218
    dd vector219
    dd vector220
    dd vector221
    dd vector222
    dd vector223
    dd vector224
    dd vector225
    dd vector226
    dd vector227
    dd vector228
    dd vector229
    dd vector230
    dd vector231
    dd vector232
    dd vector233
    dd vector234
    dd vector235
    dd vector236
    dd vector237
    dd vector238
    dd vector239
    dd vector240
    dd vector241
    dd vector242
    dd vector243
    dd vector244
    dd vector245
    dd vector246
    dd vector247
    dd vector248
    dd vector249
    dd vector250
    dd vector251
    dd vector252
    dd vector253
    dd vector254
    dd vector255