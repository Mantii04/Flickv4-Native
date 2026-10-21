.class public Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final NONENCLOSEDQUOTES:Ljava/lang/String; = ",(?=([^\"]*\"[^\"]*\")*[^\"]*$)"

.field private static final TAGPATTERN:Ljava/util/regex/Pattern;

.field private static final URI_ATTR:Ljava/lang/String; = "URI"


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private rawTag:Ljava/lang/String;

.field private tagName:Ljava/lang/String;

.field private uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^#(EXT.*?):(.*)"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->TAGPATTERN:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->attributes:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->rawTag:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->attributes:Ljava/util/Map;

    .line 6
    invoke-direct {p0, p1}, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->parseTagLine(Ljava/lang/String;)V

    return-void
.end method

.method private parseTagLine(Ljava/lang/String;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->TAGPATTERN:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->tagName:Ljava/lang/String;

    .line 19
    .line 20
    const/4 p1, 0x2

    .line 21
    invoke-virtual {v0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, ",(?=([^\"]*\"[^\"]*\")*[^\"]*$)"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    array-length v0, p1

    .line 32
    const/4 v1, 0x0

    .line 33
    move v3, v1

    .line 34
    move v4, v3

    .line 35
    :goto_0
    if-ge v3, v0, :cond_1

    .line 36
    .line 37
    aget-object v5, p1, v3

    .line 38
    .line 39
    const-string v6, "="

    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    array-length v6, v5

    .line 46
    const-string v7, ""

    .line 47
    .line 48
    const-string v8, "^\"|\"$"

    .line 49
    .line 50
    if-ne v6, v2, :cond_0

    .line 51
    .line 52
    iget-object v6, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->attributes:Ljava/util/Map;

    .line 53
    .line 54
    const-string v9, "NONAME"

    .line 55
    .line 56
    invoke-static {v4, v9}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    aget-object v5, v5, v1

    .line 61
    .line 62
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    iget-object v6, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->attributes:Ljava/util/Map;

    .line 71
    .line 72
    aget-object v9, v5, v1

    .line 73
    .line 74
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    aget-object v5, v5, v2

    .line 79
    .line 80
    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 88
    .line 89
    add-int/lit8 v3, v3, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_1
    iget-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->attributes:Ljava/util/Map;

    .line 93
    .line 94
    const-string v0, "URI"

    .line 95
    .line 96
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_2

    .line 101
    .line 102
    iget-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->attributes:Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    check-cast p1, Ljava/lang/String;

    .line 109
    .line 110
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->uri:Ljava/lang/String;

    .line 111
    .line 112
    :cond_2
    return-void

    .line 113
    :cond_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->tagName:Ljava/lang/String;

    .line 118
    .line 119
    return-void
.end method


# virtual methods
.method public getAttributes()Ljava/util/Map;
    .locals 1
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
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->attributes:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRawTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->rawTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->tagName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getURI()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->uri:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setAttributes(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->attributes:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method public setTagName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->tagName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setURI(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/comcast/viper/hlsparserj/tags/UnparsedTag;->uri:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
