.class public Lflix/com/vision/models/Channel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cat_id:I

.field public cat_name:Ljava/lang/String;

.field public channel_id:I

.field public country_id:I

.field public country_name:Ljava/lang/String;

.field public logoUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public status:I

.field public streamUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lflix/com/vision/models/StreamUrl;",
            ">;"
        }
    .end annotation
.end field

.field public wiz_name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lflix/com/vision/models/Channel;->streamUrls:Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lflix/com/vision/models/Channel;->parse(Lorg/json/JSONObject;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public IsValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/models/Channel;->streamUrls:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public parse(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, LT4/f;->c:Ljava/lang/String;

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, LT4/f;->decode2(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, p0, Lflix/com/vision/models/Channel;->name:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, LT4/f;->d:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, LT4/f;->decode2(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    iput v1, p0, Lflix/com/vision/models/Channel;->channel_id:I

    .line 29
    .line 30
    sget-object v1, LT4/f;->e:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, LT4/f;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lflix/com/vision/models/Channel;->wiz_name:Ljava/lang/String;

    .line 41
    .line 42
    sget-object v1, LT4/f;->j:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput v1, p0, Lflix/com/vision/models/Channel;->cat_id:I

    .line 53
    .line 54
    sget-object v1, LT4/f;->m:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    iput-object v1, p0, Lflix/com/vision/models/Channel;->cat_name:Ljava/lang/String;

    .line 61
    .line 62
    sget-object v1, LT4/f;->k:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iput v1, p0, Lflix/com/vision/models/Channel;->country_id:I

    .line 73
    .line 74
    sget-object v1, LT4/f;->n:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iput-object v1, p0, Lflix/com/vision/models/Channel;->country_name:Ljava/lang/String;

    .line 81
    .line 82
    sget-object v1, LT4/f;->o:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, LT4/f;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iput-object v1, p0, Lflix/com/vision/models/Channel;->logoUrl:Ljava/lang/String;

    .line 93
    .line 94
    sget-object v1, LT4/f;->l:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, p0, Lflix/com/vision/models/Channel;->status:I

    .line 105
    .line 106
    sget-object v1, LT4/f;->f:Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    const/4 v2, 0x1

    .line 117
    if-le v1, v2, :cond_0

    .line 118
    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lflix/com/vision/models/Channel;->name:Ljava/lang/String;

    .line 125
    .line 126
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string v2, ""

    .line 130
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    iput-object v1, p0, Lflix/com/vision/models/Channel;->name:Ljava/lang/String;

    .line 139
    .line 140
    :cond_0
    move v1, v0

    .line 141
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 142
    .line 143
    .line 144
    move-result v2

    .line 145
    if-ge v1, v2, :cond_2

    .line 146
    .line 147
    new-instance v2, Lflix/com/vision/models/StreamUrl;

    .line 148
    .line 149
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    check-cast v3, Lorg/json/JSONObject;

    .line 154
    .line 155
    invoke-direct {v2, v3}, Lflix/com/vision/models/StreamUrl;-><init>(Lorg/json/JSONObject;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Lflix/com/vision/models/StreamUrl;->IsValid()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-eqz v3, :cond_1

    .line 163
    .line 164
    iget-object v3, p0, Lflix/com/vision/models/Channel;->streamUrls:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    .line 168
    .line 169
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto :goto_0

    .line 172
    :catch_0
    iput v0, p0, Lflix/com/vision/models/Channel;->status:I

    .line 173
    .line 174
    :cond_2
    return-void
.end method
