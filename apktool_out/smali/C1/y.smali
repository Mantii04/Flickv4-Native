.class public final LC1/y;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final create(Landroid/content/Context;Ljava/util/concurrent/Executor;Z)Landroidx/work/impl/WorkDatabase;
    .locals 5

    .line 1
    const/4 v0, 0x5

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    const-string v3, "context"

    .line 5
    .line 6
    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v3, "queryExecutor"

    .line 10
    .line 11
    invoke-static {p2, v3}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v3, Landroidx/work/impl/WorkDatabase;

    .line 15
    .line 16
    if-eqz p3, :cond_0

    .line 17
    .line 18
    invoke-static {p1, v3}, Ln1/C;->inMemoryDatabaseBuilder(Landroid/content/Context;Ljava/lang/Class;)Ln1/D;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    invoke-virtual {p3}, Ln1/D;->allowMainThreadQueries()Ln1/D;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string p3, "androidx.work.workdb"

    .line 28
    .line 29
    invoke-static {p1, v3, p3}, Ln1/C;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Ln1/D;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    new-instance v3, LA0/a;

    .line 34
    .line 35
    invoke-direct {v3, p1, v0}, LA0/a;-><init>(Ljava/lang/Object;I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p3, v3}, Ln1/D;->openHelperFactory(Lr1/l;)Ln1/D;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    :goto_0
    invoke-virtual {p3, p2}, Ln1/D;->setQueryExecutor(Ljava/util/concurrent/Executor;)Ln1/D;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    sget-object p3, LC1/c;->a:LC1/c;

    .line 47
    .line 48
    invoke-virtual {p2, p3}, Ln1/D;->addCallback(Ln1/E;)Ln1/D;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    new-array p3, v2, [Lo1/b;

    .line 53
    .line 54
    sget-object v3, LC1/i;->c:LC1/i;

    .line 55
    .line 56
    aput-object v3, p3, v1

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    new-instance p3, LC1/s;

    .line 63
    .line 64
    const/4 v3, 0x2

    .line 65
    const/4 v4, 0x3

    .line 66
    invoke-direct {p3, p1, v3, v4}, LC1/s;-><init>(Landroid/content/Context;II)V

    .line 67
    .line 68
    .line 69
    new-array v3, v2, [Lo1/b;

    .line 70
    .line 71
    aput-object p3, v3, v1

    .line 72
    .line 73
    invoke-virtual {p2, v3}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    new-array p3, v2, [Lo1/b;

    .line 78
    .line 79
    sget-object v3, LC1/j;->c:LC1/j;

    .line 80
    .line 81
    aput-object v3, p3, v1

    .line 82
    .line 83
    invoke-virtual {p2, p3}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    new-array p3, v2, [Lo1/b;

    .line 88
    .line 89
    sget-object v3, LC1/k;->c:LC1/k;

    .line 90
    .line 91
    aput-object v3, p3, v1

    .line 92
    .line 93
    invoke-virtual {p2, p3}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    new-instance p3, LC1/s;

    .line 98
    .line 99
    const/4 v3, 0x6

    .line 100
    invoke-direct {p3, p1, v0, v3}, LC1/s;-><init>(Landroid/content/Context;II)V

    .line 101
    .line 102
    .line 103
    new-array v0, v2, [Lo1/b;

    .line 104
    .line 105
    aput-object p3, v0, v1

    .line 106
    .line 107
    invoke-virtual {p2, v0}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    new-array p3, v2, [Lo1/b;

    .line 112
    .line 113
    sget-object v0, LC1/l;->c:LC1/l;

    .line 114
    .line 115
    aput-object v0, p3, v1

    .line 116
    .line 117
    invoke-virtual {p2, p3}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    new-array p3, v2, [Lo1/b;

    .line 122
    .line 123
    sget-object v0, LC1/m;->c:LC1/m;

    .line 124
    .line 125
    aput-object v0, p3, v1

    .line 126
    .line 127
    invoke-virtual {p2, p3}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 128
    .line 129
    .line 130
    move-result-object p2

    .line 131
    new-array p3, v2, [Lo1/b;

    .line 132
    .line 133
    sget-object v0, LC1/n;->c:LC1/n;

    .line 134
    .line 135
    aput-object v0, p3, v1

    .line 136
    .line 137
    invoke-virtual {p2, p3}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    new-instance p3, LC1/H;

    .line 142
    .line 143
    invoke-direct {p3, p1}, LC1/H;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    new-array v0, v2, [Lo1/b;

    .line 147
    .line 148
    aput-object p3, v0, v1

    .line 149
    .line 150
    invoke-virtual {p2, v0}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    new-instance p3, LC1/s;

    .line 155
    .line 156
    const/16 v0, 0xa

    .line 157
    .line 158
    const/16 v3, 0xb

    .line 159
    .line 160
    invoke-direct {p3, p1, v0, v3}, LC1/s;-><init>(Landroid/content/Context;II)V

    .line 161
    .line 162
    .line 163
    new-array p1, v2, [Lo1/b;

    .line 164
    .line 165
    aput-object p3, p1, v1

    .line 166
    .line 167
    invoke-virtual {p2, p1}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    new-array p2, v2, [Lo1/b;

    .line 172
    .line 173
    sget-object p3, LC1/f;->c:LC1/f;

    .line 174
    .line 175
    aput-object p3, p2, v1

    .line 176
    .line 177
    invoke-virtual {p1, p2}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    new-array p2, v2, [Lo1/b;

    .line 182
    .line 183
    sget-object p3, LC1/g;->c:LC1/g;

    .line 184
    .line 185
    aput-object p3, p2, v1

    .line 186
    .line 187
    invoke-virtual {p1, p2}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    new-array p2, v2, [Lo1/b;

    .line 192
    .line 193
    sget-object p3, LC1/h;->c:LC1/h;

    .line 194
    .line 195
    aput-object p3, p2, v1

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Ln1/D;->addMigrations([Lo1/b;)Ln1/D;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Ln1/D;->fallbackToDestructiveMigration()Ln1/D;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ln1/D;->build()Landroidx/room/RoomDatabase;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Landroidx/work/impl/WorkDatabase;

    .line 210
    .line 211
    return-object p1
.end method
