.class public final enum Lcom/uwetrottmann/trakt5/enums/MediaType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/uwetrottmann/trakt5/enums/TraktEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uwetrottmann/trakt5/enums/MediaType;",
        ">;",
        "Lcom/uwetrottmann/trakt5/enums/TraktEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public static final enum BETAMAX:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public static final enum BLURAY:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public static final enum DIGITAL:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public static final enum DVD:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public static final enum HDDVD:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public static final enum LASERDISC:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field private static final STRING_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uwetrottmann/trakt5/enums/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum VCD:Lcom/uwetrottmann/trakt5/enums/MediaType;

.field public static final enum VHS:Lcom/uwetrottmann/trakt5/enums/MediaType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/uwetrottmann/trakt5/enums/MediaType;
    .locals 3

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    new-array v0, v0, [Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 4
    .line 5
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/MediaType;->DIGITAL:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/MediaType;->BLURAY:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/MediaType;->HDDVD:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/MediaType;->DVD:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/MediaType;->VCD:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/MediaType;->VHS:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/MediaType;->BETAMAX:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/MediaType;->LASERDISC:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 2
    .line 3
    const-string v1, "digital"

    .line 4
    .line 5
    const-string v2, "DIGITAL"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/uwetrottmann/trakt5/enums/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->DIGITAL:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 12
    .line 13
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "bluray"

    .line 17
    .line 18
    const-string v4, "BLURAY"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2}, Lcom/uwetrottmann/trakt5/enums/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->BLURAY:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 24
    .line 25
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "hddvd"

    .line 29
    .line 30
    const-string v4, "HDDVD"

    .line 31
    .line 32
    invoke-direct {v0, v4, v1, v2}, Lcom/uwetrottmann/trakt5/enums/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->HDDVD:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 36
    .line 37
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "dvd"

    .line 41
    .line 42
    const-string v4, "DVD"

    .line 43
    .line 44
    invoke-direct {v0, v4, v1, v2}, Lcom/uwetrottmann/trakt5/enums/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->DVD:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 48
    .line 49
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "vcd"

    .line 53
    .line 54
    const-string v4, "VCD"

    .line 55
    .line 56
    invoke-direct {v0, v4, v1, v2}, Lcom/uwetrottmann/trakt5/enums/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->VCD:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 60
    .line 61
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "vhs"

    .line 65
    .line 66
    const-string v4, "VHS"

    .line 67
    .line 68
    invoke-direct {v0, v4, v1, v2}, Lcom/uwetrottmann/trakt5/enums/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->VHS:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 72
    .line 73
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "betamax"

    .line 77
    .line 78
    const-string v4, "BETAMAX"

    .line 79
    .line 80
    invoke-direct {v0, v4, v1, v2}, Lcom/uwetrottmann/trakt5/enums/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->BETAMAX:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 84
    .line 85
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "laserdisc"

    .line 89
    .line 90
    const-string v4, "LASERDISC"

    .line 91
    .line 92
    invoke-direct {v0, v4, v1, v2}, Lcom/uwetrottmann/trakt5/enums/MediaType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->LASERDISC:Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 96
    .line 97
    invoke-static {}, Lcom/uwetrottmann/trakt5/enums/MediaType;->$values()[Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->$VALUES:[Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 102
    .line 103
    new-instance v0, Ljava/util/HashMap;

    .line 104
    .line 105
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->STRING_MAPPING:Ljava/util/Map;

    .line 109
    .line 110
    invoke-static {}, Lcom/uwetrottmann/trakt5/enums/MediaType;->values()[Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    array-length v1, v0

    .line 115
    :goto_0
    if-ge v3, v1, :cond_0

    .line 116
    .line 117
    aget-object v2, v0, v3

    .line 118
    .line 119
    sget-object v4, Lcom/uwetrottmann/trakt5/enums/MediaType;->STRING_MAPPING:Ljava/util/Map;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/uwetrottmann/trakt5/enums/MediaType;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v5

    .line 125
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    add-int/lit8 v3, v3, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/uwetrottmann/trakt5/enums/MediaType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->STRING_MAPPING:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/MediaType;
    .locals 1

    .line 1
    const-class v0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/uwetrottmann/trakt5/enums/MediaType;
    .locals 1

    .line 1
    sget-object v0, Lcom/uwetrottmann/trakt5/enums/MediaType;->$VALUES:[Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/uwetrottmann/trakt5/enums/MediaType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/uwetrottmann/trakt5/enums/MediaType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/enums/MediaType;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
