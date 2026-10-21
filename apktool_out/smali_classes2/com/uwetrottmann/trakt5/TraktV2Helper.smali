.class public Lcom/uwetrottmann/trakt5/TraktV2Helper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/AudioChannels;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$16(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/AudioChannels;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/threeten/bp/OffsetDateTime;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$1(Lorg/threeten/bp/OffsetDateTime;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/uwetrottmann/trakt5/enums/Audio;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$13(Lcom/uwetrottmann/trakt5/enums/Audio;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/threeten/bp/LocalDate;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$2(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/threeten/bp/LocalDate;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/MediaType;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$8(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/MediaType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Resolution;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$10(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Resolution;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/uwetrottmann/trakt5/enums/Hdr;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$11(Lcom/uwetrottmann/trakt5/enums/Hdr;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static getGsonBuilder()Lcom/google/gson/GsonBuilder;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/gson/GsonBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 10
    .line 11
    .line 12
    const-class v2, Lorg/threeten/bp/OffsetDateTime;

    .line 13
    .line 14
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/uwetrottmann/trakt5/b;

    .line 18
    .line 19
    const/4 v3, 0x6

    .line 20
    invoke-direct {v1, v3}, Lcom/uwetrottmann/trakt5/b;-><init>(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 27
    .line 28
    const/16 v2, 0x9

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 31
    .line 32
    .line 33
    const-class v2, Lorg/threeten/bp/LocalDate;

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 39
    .line 40
    const/4 v2, 0x1

    .line 41
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const-class v2, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 45
    .line 46
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 47
    .line 48
    .line 49
    new-instance v1, Lcom/uwetrottmann/trakt5/b;

    .line 50
    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-direct {v1, v3}, Lcom/uwetrottmann/trakt5/b;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 59
    .line 60
    const/4 v2, 0x2

    .line 61
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 62
    .line 63
    .line 64
    const-class v2, Lcom/uwetrottmann/trakt5/enums/Status;

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 70
    .line 71
    const/4 v2, 0x3

    .line 72
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 73
    .line 74
    .line 75
    const-class v2, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 76
    .line 77
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 78
    .line 79
    .line 80
    new-instance v1, Lcom/uwetrottmann/trakt5/b;

    .line 81
    .line 82
    const/4 v2, 0x1

    .line 83
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/b;-><init>(I)V

    .line 84
    .line 85
    .line 86
    const-class v2, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 87
    .line 88
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 92
    .line 93
    const/4 v3, 0x4

    .line 94
    invoke-direct {v1, v3}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 98
    .line 99
    .line 100
    new-instance v1, Lcom/uwetrottmann/trakt5/b;

    .line 101
    .line 102
    const/4 v2, 0x2

    .line 103
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/b;-><init>(I)V

    .line 104
    .line 105
    .line 106
    const-class v2, Lcom/uwetrottmann/trakt5/enums/Resolution;

    .line 107
    .line 108
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 109
    .line 110
    .line 111
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 112
    .line 113
    const/4 v3, 0x5

    .line 114
    invoke-direct {v1, v3}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/uwetrottmann/trakt5/b;

    .line 121
    .line 122
    const/4 v2, 0x3

    .line 123
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/b;-><init>(I)V

    .line 124
    .line 125
    .line 126
    const-class v2, Lcom/uwetrottmann/trakt5/enums/Hdr;

    .line 127
    .line 128
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 129
    .line 130
    .line 131
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 132
    .line 133
    const/4 v3, 0x6

    .line 134
    invoke-direct {v1, v3}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 138
    .line 139
    .line 140
    new-instance v1, Lcom/uwetrottmann/trakt5/b;

    .line 141
    .line 142
    const/4 v2, 0x4

    .line 143
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/b;-><init>(I)V

    .line 144
    .line 145
    .line 146
    const-class v2, Lcom/uwetrottmann/trakt5/enums/Audio;

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 149
    .line 150
    .line 151
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 152
    .line 153
    const/4 v3, 0x7

    .line 154
    invoke-direct {v1, v3}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 158
    .line 159
    .line 160
    new-instance v1, Lcom/uwetrottmann/trakt5/b;

    .line 161
    .line 162
    const/4 v2, 0x5

    .line 163
    invoke-direct {v1, v2}, Lcom/uwetrottmann/trakt5/b;-><init>(I)V

    .line 164
    .line 165
    .line 166
    const-class v2, Lcom/uwetrottmann/trakt5/enums/AudioChannels;

    .line 167
    .line 168
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 169
    .line 170
    .line 171
    new-instance v1, Lcom/uwetrottmann/trakt5/a;

    .line 172
    .line 173
    const/16 v3, 0x8

    .line 174
    .line 175
    invoke-direct {v1, v3}, Lcom/uwetrottmann/trakt5/a;-><init>(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, v2, v1}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 179
    .line 180
    .line 181
    return-object v0
.end method

.method public static synthetic h(Lcom/uwetrottmann/trakt5/enums/AudioChannels;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$15(Lcom/uwetrottmann/trakt5/enums/AudioChannels;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/uwetrottmann/trakt5/enums/Rating;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$4(Lcom/uwetrottmann/trakt5/enums/Rating;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic j(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Hdr;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$12(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Hdr;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Status;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$5(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Status;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/uwetrottmann/trakt5/enums/Resolution;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$9(Lcom/uwetrottmann/trakt5/enums/Resolution;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$0(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/threeten/bp/OffsetDateTime;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/threeten/bp/OffsetDateTime;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/OffsetDateTime;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$1(Lorg/threeten/bp/OffsetDateTime;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/threeten/bp/OffsetDateTime;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method private static synthetic lambda$getGsonBuilder$10(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Resolution;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/uwetrottmann/trakt5/enums/Resolution;->fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/Resolution;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$11(Lcom/uwetrottmann/trakt5/enums/Hdr;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/enums/Hdr;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method private static synthetic lambda$getGsonBuilder$12(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Hdr;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/uwetrottmann/trakt5/enums/Hdr;->fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/Hdr;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$13(Lcom/uwetrottmann/trakt5/enums/Audio;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/enums/Audio;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method private static synthetic lambda$getGsonBuilder$14(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Audio;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/uwetrottmann/trakt5/enums/Audio;->fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/Audio;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$15(Lcom/uwetrottmann/trakt5/enums/AudioChannels;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/enums/AudioChannels;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method private static synthetic lambda$getGsonBuilder$16(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/AudioChannels;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/uwetrottmann/trakt5/enums/AudioChannels;->fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/AudioChannels;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$2(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/threeten/bp/LocalDate;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lorg/threeten/bp/LocalDate;->parse(Ljava/lang/CharSequence;)Lorg/threeten/bp/LocalDate;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$3(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Rating;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/uwetrottmann/trakt5/enums/Rating;->fromValue(I)Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$4(Lcom/uwetrottmann/trakt5/enums/Rating;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 2
    .line 3
    iget p0, p0, Lcom/uwetrottmann/trakt5/enums/Rating;->value:I

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method private static synthetic lambda$getGsonBuilder$5(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Status;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/uwetrottmann/trakt5/enums/Status;->fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/Status;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$6(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$7(Lcom/uwetrottmann/trakt5/enums/MediaType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/enums/MediaType;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method private static synthetic lambda$getGsonBuilder$8(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/MediaType;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/uwetrottmann/trakt5/enums/MediaType;->fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method private static synthetic lambda$getGsonBuilder$9(Lcom/uwetrottmann/trakt5/enums/Resolution;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    new-instance p1, Lcom/google/gson/JsonPrimitive;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/uwetrottmann/trakt5/enums/Resolution;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {p1, p0}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public static synthetic m(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Audio;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$14(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Audio;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic n(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/threeten/bp/OffsetDateTime;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$0(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lorg/threeten/bp/OffsetDateTime;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/uwetrottmann/trakt5/enums/MediaType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$7(Lcom/uwetrottmann/trakt5/enums/MediaType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$6(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic q(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Rating;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/uwetrottmann/trakt5/TraktV2Helper;->lambda$getGsonBuilder$3(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/uwetrottmann/trakt5/enums/Rating;

    move-result-object p0

    return-object p0
.end method
