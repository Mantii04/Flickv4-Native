.class public final synthetic Lflix/com/vision/processors/english/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/processors/english/q;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/processors/english/q;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p3, p0, Lflix/com/vision/processors/english/n;->b:I

    iput-object p1, p0, Lflix/com/vision/processors/english/n;->e:Lflix/com/vision/processors/english/q;

    iput-object p2, p0, Lflix/com/vision/processors/english/n;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Lflix/com/vision/processors/english/n;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lflix/com/vision/processors/english/n;->e:Lflix/com/vision/processors/english/q;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lflix/com/vision/processors/english/n;->f:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v1}, Lg6/e;->parse(Ljava/lang/String;)Lj6/h;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const-string v2, "BUTTON"

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/b;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    move v3, v2

    .line 27
    :goto_0
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v3, v4, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lorg/jsoup/nodes/b;

    .line 38
    .line 39
    new-instance v5, Lflix/com/vision/models/VideoSource;

    .line 40
    .line 41
    invoke-direct {v5}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v6, "value"

    .line 45
    .line 46
    invoke-virtual {v4, v6}, Lj6/p;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v6, "dooodster"

    .line 51
    .line 52
    const-string v7, "dsvplay"

    .line 53
    .line 54
    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iput-object v4, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 59
    .line 60
    const-string v6, "/se"

    .line 61
    .line 62
    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_0
    const/4 v4, 0x1

    .line 70
    iput-boolean v4, v5, Lflix/com/vision/models/VideoSource;->external_link:Z

    .line 71
    .line 72
    iput-boolean v2, v5, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 73
    .line 74
    iput-boolean v4, v5, Lflix/com/vision/models/VideoSource;->is_embed:Z

    .line 75
    .line 76
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v6, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v0, v6}, Lflix/com/vision/processors/english/m;->checkLinkLabel(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v6, " NOXX"

    .line 91
    .line 92
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    iput-object v4, v5, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v0, v5}, Lflix/com/vision/processors/english/m;->addLink(Lflix/com/vision/models/VideoSource;)V

    .line 102
    .line 103
    .line 104
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_1
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lflix/com/vision/processors/english/n;->f:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v1, p0, Lflix/com/vision/processors/english/n;->e:Lflix/com/vision/processors/english/q;

    .line 111
    .line 112
    :try_start_0
    iget-object v2, v1, Lflix/com/vision/processors/english/q;->e:Landroid/webkit/WebView;

    .line 113
    .line 114
    if-nez v2, :cond_2

    .line 115
    .line 116
    new-instance v2, Landroid/webkit/WebView;

    .line 117
    .line 118
    iget-object v3, v1, Lflix/com/vision/processors/english/q;->b:Landroid/content/Context;

    .line 119
    .line 120
    invoke-direct {v2, v3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 121
    .line 122
    .line 123
    iput-object v2, v1, Lflix/com/vision/processors/english/q;->e:Landroid/webkit/WebView;

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    goto :goto_3

    .line 128
    :cond_2
    :goto_2
    iget-object v2, v1, Lflix/com/vision/processors/english/q;->e:Landroid/webkit/WebView;

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    const/4 v3, 0x1

    .line 135
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v2, v1, Lflix/com/vision/processors/english/q;->e:Landroid/webkit/WebView;

    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 145
    .line 146
    .line 147
    iget-object v2, v1, Lflix/com/vision/processors/english/q;->e:Landroid/webkit/WebView;

    .line 148
    .line 149
    new-instance v3, Lflix/com/vision/processors/english/p;

    .line 150
    .line 151
    invoke-direct {v3, v1}, Lflix/com/vision/processors/english/p;-><init>(Lflix/com/vision/processors/english/q;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v1, Lflix/com/vision/processors/english/q;->e:Landroid/webkit/WebView;

    .line 158
    .line 159
    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :goto_3
    const-string v1, "NoxxSeries"

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    :goto_4
    return-void

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
