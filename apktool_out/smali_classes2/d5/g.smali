.class public final synthetic Ld5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ld5/l;


# direct methods
.method public synthetic constructor <init>(Ld5/l;I)V
    .locals 0

    .line 1
    iput p2, p0, Ld5/g;->b:I

    iput-object p1, p0, Ld5/g;->e:Ld5/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget v0, p0, Ld5/g;->b:I

    .line 2
    .line 3
    check-cast p1, Ljava/lang/String;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ld5/g;->e:Ld5/l;

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
    iget v3, v0, Ld5/l;->d:I

    .line 30
    .line 31
    iget v4, v0, Ld5/l;->e:I

    .line 32
    .line 33
    invoke-static {p1, v3, v4}, Lflix/com/vision/utils/JsonUtils;->parsePlaylistHindiSeries(Lcom/google/gson/JsonArray;II)Ljava/util/ArrayList;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :catch_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lflix/com/vision/models/hindi/PlaylistItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 52
    .line 53
    :try_start_1
    invoke-virtual {v0, v3}, Ld5/l;->GetStreamLinkHindi3(Lflix/com/vision/models/hindi/PlaylistItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_1
    move-exception p1

    .line 58
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_2
    move-exception p1

    .line 67
    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    .line 73
    .line 74
    :cond_0
    :goto_1
    return-void

    .line 75
    :pswitch_0
    iget-object v0, p0, Ld5/g;->e:Ld5/l;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :try_start_3
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieHindiSeries(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-nez v1, :cond_1

    .line 89
    .line 90
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseMovieHindiSeries2(Ljava/lang/String;)Lflix/com/vision/models/hindi/MovieRequest;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    goto :goto_2

    .line 95
    :catch_3
    move-exception p1

    .line 96
    goto :goto_3

    .line 97
    :cond_1
    :goto_2
    if-eqz v1, :cond_4

    .line 98
    .line 99
    iget-object p1, v1, Lflix/com/vision/models/hindi/MovieRequest;->token:Ljava/lang/String;

    .line 100
    .line 101
    iput-object p1, v0, Ld5/l;->c:Ljava/lang/String;

    .line 102
    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    iget-object v2, v0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    iget-object v2, v1, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v2, v1, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v3, v0, Lflix/com/vision/processors/english/m;->domain:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-nez v2, :cond_2

    .line 131
    .line 132
    iget-object v2, v1, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 133
    .line 134
    const-string v3, ".com"

    .line 135
    .line 136
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_3

    .line 141
    .line 142
    :cond_2
    iget-object p1, v1, Lflix/com/vision/models/hindi/MovieRequest;->data:Ljava/lang/String;

    .line 143
    .line 144
    :cond_3
    invoke-virtual {v0, p1}, Ld5/l;->GetStreamLinkHindi2(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 145
    .line 146
    .line 147
    goto :goto_4

    .line 148
    :goto_3
    const-class v0, Lflix/com/vision/activities/MovieDetailActivity;

    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    const-string v1, ""

    .line 155
    .line 156
    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    .line 158
    .line 159
    :cond_4
    :goto_4
    return-void

    .line 160
    nop

    .line 161
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
