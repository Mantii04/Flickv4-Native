.class public final La5/x;
.super Lflix/com/vision/processors/english/m;
.source "SourceFile"


# instance fields
.field public final a:Lflix/com/vision/models/Movie;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lflix/com/vision/models/Movie;LU4/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lflix/com/vision/processors/english/m;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string p1, "https://torrentz2.nz"

    .line 5
    .line 6
    iput-object p1, p0, La5/x;->b:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, La5/x;->c:Ljava/util/ArrayList;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, La5/x;->g:Z

    .line 17
    .line 18
    iput-object p2, p0, La5/x;->a:Lflix/com/vision/models/Movie;

    .line 19
    .line 20
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->callBack:LU4/f;

    .line 21
    .line 22
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public onMessageEvent(LT4/e;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, La5/x;->g:Z

    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public process(III)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-le p3, v0, :cond_0

    .line 3
    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    iput v1, p0, Lflix/com/vision/processors/english/m;->max_page:I

    .line 7
    .line 8
    :cond_0
    if-eq p3, v0, :cond_3

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    if-eq p3, v0, :cond_2

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-eq p3, v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    sget-object p3, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->f:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 18
    .line 19
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->torrentServiceType:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget-object p3, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->e:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 23
    .line 24
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->torrentServiceType:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    sget-object p3, Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;->b:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 28
    .line 29
    iput-object p3, p0, Lflix/com/vision/processors/english/m;->torrentServiceType:Lflix/com/vision/processors/english/BaseProcessor$TorrentServiceType;

    .line 30
    .line 31
    :goto_0
    iput p1, p0, La5/x;->d:I

    .line 32
    .line 33
    iput p2, p0, La5/x;->e:I

    .line 34
    .line 35
    iget-boolean p1, p0, La5/x;->g:Z

    .line 36
    .line 37
    if-eqz p1, :cond_4

    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string p2, "S"

    .line 43
    .line 44
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget p2, p0, La5/x;->d:I

    .line 48
    .line 49
    invoke-static {p2}, Lh5/n;->formatSeasonnumber(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string p2, "E"

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget p2, p0, La5/x;->e:I

    .line 62
    .line 63
    invoke-static {p2}, Lh5/n;->formatSeasonnumber(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, La5/x;->f:Ljava/lang/String;

    .line 75
    .line 76
    new-instance p1, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, La5/x;->a:Lflix/com/vision/models/Movie;

    .line 82
    .line 83
    invoke-virtual {p2}, Lflix/com/vision/models/Movie;->getTitle()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    const-string p3, "&"

    .line 88
    .line 89
    const-string v0, ""

    .line 90
    .line 91
    invoke-virtual {p2, p3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p2, " "

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object p3, p0, La5/x;->f:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1}, Lh5/n;->removeSpecialCharsKeepSpace(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    const-string p3, "+"

    .line 117
    .line 118
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    iget-object p3, p0, La5/x;->b:Ljava/lang/String;

    .line 128
    .line 129
    const-string v0, "/search?q="

    .line 130
    .line 131
    invoke-static {p2, p3, v0}, LA/i;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {p2, p1}, LA/i;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance p2, La5/u;

    .line 140
    .line 141
    invoke-direct {p2, p0, p1}, La5/u;-><init>(La5/x;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 145
    .line 146
    const/4 p3, 0x0

    .line 147
    new-array p3, p3, [Ljava/lang/Void;

    .line 148
    .line 149
    invoke-virtual {p2, p1, p3}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 150
    .line 151
    .line 152
    return-void
.end method
