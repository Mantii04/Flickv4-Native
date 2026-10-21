.class public Lflix/com/vision/models/StreamUrl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lflix/com/vision/models/StreamUrl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isValid:Z

.field public label:Ljava/lang/String;

.field public player_headers:Ljava/lang/String;

.field public player_referer:Ljava/lang/String;

.field public player_user_agent:Ljava/lang/String;

.field public referer:Ljava/lang/String;

.field public stream_id:I

.field public stream_qualities:Ljava/lang/String;

.field public stream_url:Ljava/lang/String;

.field public token:I

.field public token_str:Ljava/lang/String;

.field public user_agent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lflix/com/vision/models/StreamUrl$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lflix/com/vision/models/StreamUrl$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lflix/com/vision/models/StreamUrl;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lflix/com/vision/models/StreamUrl;->isValid:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lflix/com/vision/models/StreamUrl;->isValid:Z

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/StreamUrl;->referer:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/StreamUrl;->user_agent:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/StreamUrl;->player_headers:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lflix/com/vision/models/StreamUrl;->token:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/StreamUrl;->token_str:Ljava/lang/String;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/StreamUrl;->stream_qualities:Ljava/lang/String;

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lflix/com/vision/models/StreamUrl;->stream_id:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lflix/com/vision/models/StreamUrl;->isValid:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lflix/com/vision/models/StreamUrl;->label:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lflix/com/vision/models/StreamUrl;->isValid:Z

    .line 17
    invoke-direct {p0, p1}, Lflix/com/vision/models/StreamUrl;->parse(Lorg/json/JSONObject;)V

    return-void
.end method

.method private parse(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, LT4/f;->p:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lflix/com/vision/models/StreamUrl;->referer:Ljava/lang/String;

    .line 8
    .line 9
    sget-object v0, LT4/f;->s:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    .line 16
    .line 17
    sget-object v0, LT4/f;->t:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lflix/com/vision/models/StreamUrl;->user_agent:Ljava/lang/String;

    .line 24
    .line 25
    sget-object v0, LT4/f;->r:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    .line 32
    .line 33
    sget-object v0, LT4/f;->q:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lflix/com/vision/models/StreamUrl;->player_headers:Ljava/lang/String;

    .line 40
    .line 41
    sget-object v0, LT4/f;->i:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, LT4/f;->decode2(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lflix/com/vision/models/StreamUrl;->token:I

    .line 56
    .line 57
    sget-object v0, LT4/f;->h:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, LT4/f;->decode(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iput-object v0, p0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 68
    .line 69
    sget-object v0, LT4/f;->g:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, LT4/f;->decode2(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    iput p1, p0, Lflix/com/vision/models/StreamUrl;->stream_id:I

    .line 84
    .line 85
    iget p1, p0, Lflix/com/vision/models/StreamUrl;->token:I

    .line 86
    .line 87
    const/16 v0, 0x27

    .line 88
    .line 89
    if-eq p1, v0, :cond_1

    .line 90
    .line 91
    const/16 v0, 0x14

    .line 92
    .line 93
    if-eq p1, v0, :cond_1

    .line 94
    .line 95
    const/16 v0, 0x9

    .line 96
    .line 97
    if-eq p1, v0, :cond_1

    .line 98
    .line 99
    const/16 v0, 0xd

    .line 100
    .line 101
    if-eq p1, v0, :cond_1

    .line 102
    .line 103
    const/16 v0, 0xf

    .line 104
    .line 105
    if-eq p1, v0, :cond_1

    .line 106
    .line 107
    const/16 v0, 0x10

    .line 108
    .line 109
    if-eq p1, v0, :cond_1

    .line 110
    .line 111
    const/16 v0, 0x11

    .line 112
    .line 113
    if-eq p1, v0, :cond_1

    .line 114
    .line 115
    const/16 v0, 0x21

    .line 116
    .line 117
    if-eq p1, v0, :cond_1

    .line 118
    .line 119
    const/16 v0, 0x25

    .line 120
    .line 121
    if-eq p1, v0, :cond_1

    .line 122
    .line 123
    const/16 v0, 0x26

    .line 124
    .line 125
    if-eq p1, v0, :cond_1

    .line 126
    .line 127
    const/16 v0, 0x2b

    .line 128
    .line 129
    if-eq p1, v0, :cond_1

    .line 130
    .line 131
    const/16 v0, 0x2c

    .line 132
    .line 133
    if-eq p1, v0, :cond_1

    .line 134
    .line 135
    const/16 v0, 0x2f

    .line 136
    .line 137
    if-eq p1, v0, :cond_1

    .line 138
    .line 139
    const/16 v0, 0x30

    .line 140
    .line 141
    if-ne p1, v0, :cond_0

    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 150
    .line 151
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v0, ""

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 164
    .line 165
    return-void

    .line 166
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lflix/com/vision/models/StreamUrl;->isValid:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .line 169
    :catch_0
    return-void
.end method


# virtual methods
.method public IsValid()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lflix/com/vision/models/StreamUrl;->isValid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    if-le v0, v1, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    return v0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "User-Agent"

    .line 7
    .line 8
    iget-object v2, p0, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    const-string v1, "Referer"

    .line 14
    .line 15
    iget-object v2, p0, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object v0
.end method

.method public m18813e(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->referer:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->user_agent:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->player_referer:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->player_user_agent:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->player_headers:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Lflix/com/vision/models/StreamUrl;->token:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->token_str:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->stream_qualities:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget p2, p0, Lflix/com/vision/models/StreamUrl;->stream_id:I

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->stream_url:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-boolean p2, p0, Lflix/com/vision/models/StreamUrl;->isValid:Z

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lflix/com/vision/models/StreamUrl;->label:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
