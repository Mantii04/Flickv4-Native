.class public final synthetic Ld5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ld5/f;


# direct methods
.method public synthetic constructor <init>(Ld5/f;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld5/a;->b:I

    iput-object p1, p0, Ld5/a;->e:Ld5/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Ld5/a;->b:I

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld5/a;->e:Ld5/f;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    const-class v2, Lflix/com/vision/activities/MovieDetailActivity;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :try_start_0
    invoke-static {p1}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parsePlaylistHindi(Lcom/google/gson/JsonArray;)Ljava/util/ArrayList;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    check-cast v3, Lflix/com/vision/models/hindi/PlaylistItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v0, v3}, Ld5/f;->GetStreamLinkHindi3(Lflix/com/vision/models/hindi/PlaylistItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_1
    move-exception p1

    .line 54
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catch_2
    move-exception p1

    .line 63
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    :cond_0
    :goto_1
    return-void

    .line 71
    :pswitch_0
    iget-object v0, p0, Ld5/a;->e:Ld5/f;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    .line 75
    .line 76
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    :try_start_3
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieHindi(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_1

    .line 85
    .line 86
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieHindi2(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    goto :goto_2

    .line 91
    :catch_3
    move-exception p1

    .line 92
    goto :goto_3

    .line 93
    :cond_1
    :goto_2
    if-eqz v1, :cond_4

    .line 94
    .line 95
    iget-object p1, v1, Lflix/com/vision/models/hindi/MovieRequest;->token:Ljava/lang/String;

    .line 96
    .line 97
    iput-object p1, v0, Ld5/f;->c:Ljava/lang/String;

    .line 98
    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v2, v0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, v1, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 110
    .line 111
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object v2, v1, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 119
    .line 120
    iget-object v3, v0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    if-nez v2, :cond_2

    .line 127
    .line 128
    iget-object v2, v1, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 129
    .line 130
    const-string v3, ".com"

    .line 131
    .line 132
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_3

    .line 137
    .line 138
    :cond_2
    iget-object p1, v1, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 139
    .line 140
    :cond_3
    invoke-virtual {v0, p1}, Ld5/f;->GetStreamLinkHindi2(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 141
    .line 142
    .line 143
    goto :goto_4

    .line 144
    :goto_3
    const-class v0, Lflix/com/vision/activities/MovieDetailActivity;

    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    const-string v1, ""

    .line 151
    .line 152
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    .line 154
    .line 155
    :cond_4
    :goto_4
    return-void

    .line 156
    nop

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
