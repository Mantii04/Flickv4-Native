.class public final synthetic Ly4/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Lflix/com/vision/activities/LinksActivity;

.field public final synthetic f:Lflix/com/vision/models/VideoSource;


# direct methods
.method public synthetic constructor <init>(Lflix/com/vision/activities/LinksActivity;Lflix/com/vision/models/VideoSource;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly4/S;->b:I

    iput-object p1, p0, Ly4/S;->e:Lflix/com/vision/activities/LinksActivity;

    iput-object p2, p0, Ly4/S;->f:Lflix/com/vision/models/VideoSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ly4/S;->f:Lflix/com/vision/models/VideoSource;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Ly4/S;->e:Lflix/com/vision/activities/LinksActivity;

    .line 5
    .line 6
    iget v3, p0, Ly4/S;->b:I

    .line 7
    .line 8
    check-cast p1, Lcom/google/gson/JsonElement;

    .line 9
    .line 10
    packed-switch v3, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    sget v3, Lflix/com/vision/activities/LinksActivity;->b0:I

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    invoke-static {p1}, Lflix/com/vision/utils/JsonUtils;->parseRDVideo(Lcom/google/gson/JsonElement;)Lflix/com/vision/models/VideoSource;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iput-boolean v1, v2, Lflix/com/vision/activities/LinksActivity;->T:Z

    .line 25
    .line 26
    invoke-static {p1}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 30
    .line 31
    iput-object v0, p1, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v2, p1}, Lflix/com/vision/activities/LinksActivity;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    iput-boolean v1, v2, Lflix/com/vision/activities/LinksActivity;->T:Z

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v3, "status"

    .line 44
    .line 45
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_5

    .line 54
    .line 55
    const-string v4, "success"

    .line 56
    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_5

    .line 62
    .line 63
    const-string v3, "data"

    .line 64
    .line 65
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string v3, "link"

    .line 74
    .line 75
    invoke-virtual {p1, v3}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "host"

    .line 84
    .line 85
    invoke-virtual {p1, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    const-string v5, "filesize"

    .line 94
    .line 95
    invoke-virtual {p1, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsLong()J

    .line 100
    .line 101
    .line 102
    move-result-wide v5

    .line 103
    if-eqz v4, :cond_1

    .line 104
    .line 105
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const/4 v7, 0x2

    .line 110
    if-ge p1, v7, :cond_2

    .line 111
    .line 112
    :cond_1
    const-string v4, "ALLDEBRID"

    .line 113
    .line 114
    :cond_2
    const-wide/16 v7, 0x0

    .line 115
    .line 116
    cmp-long p1, v5, v7

    .line 117
    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    const-wide/16 v7, -0x1

    .line 121
    .line 122
    cmp-long p1, v5, v7

    .line 123
    .line 124
    if-eqz p1, :cond_3

    .line 125
    .line 126
    invoke-static {v5, v6}, LT4/m;->readableFileSize(J)Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    goto :goto_0

    .line 131
    :cond_3
    const-string p1, ""

    .line 132
    .line 133
    :goto_0
    new-instance v5, Lflix/com/vision/models/VideoSource;

    .line 134
    .line 135
    invoke-direct {v5}, Lflix/com/vision/models/VideoSource;-><init>()V

    .line 136
    .line 137
    .line 138
    iput-boolean v1, v5, Lflix/com/vision/models/VideoSource;->streamable:Z

    .line 139
    .line 140
    new-instance v6, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v7, "["

    .line 143
    .line 144
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v4, "] [ALLDEBRID] ["

    .line 155
    .line 156
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string p1, "]"

    .line 163
    .line 164
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    iput-object p1, v5, Lflix/com/vision/models/VideoSource;->label:Ljava/lang/String;

    .line 172
    .line 173
    iput-object v3, v5, Lflix/com/vision/models/VideoSource;->streamUrl:Ljava/lang/String;

    .line 174
    .line 175
    iget-object p1, v0, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 176
    .line 177
    iput-object p1, v5, Lflix/com/vision/models/VideoSource;->originalFileName:Ljava/lang/String;

    .line 178
    .line 179
    iput-boolean v1, v5, Lflix/com/vision/models/VideoSource;->isAllDebrid:Z

    .line 180
    .line 181
    invoke-static {v5}, Lflix/com/vision/activities/LinksActivity;->setRDQtyLabel(Lflix/com/vision/models/VideoSource;)V

    .line 182
    .line 183
    .line 184
    iget p1, v5, Lflix/com/vision/models/VideoSource;->quality:I

    .line 185
    .line 186
    if-nez p1, :cond_4

    .line 187
    .line 188
    const/16 p1, 0x12c

    .line 189
    .line 190
    iput p1, v5, Lflix/com/vision/models/VideoSource;->quality:I

    .line 191
    .line 192
    :cond_4
    invoke-virtual {v2, v5}, Lflix/com/vision/activities/LinksActivity;->OnSuccess(Lflix/com/vision/models/VideoSource;)V

    .line 193
    .line 194
    .line 195
    :cond_5
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
