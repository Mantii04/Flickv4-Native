.class public final enum Lcom/uwetrottmann/trakt5/enums/Rating;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/uwetrottmann/trakt5/enums/TraktEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uwetrottmann/trakt5/enums/Rating;",
        ">;",
        "Lcom/uwetrottmann/trakt5/enums/TraktEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum BAD:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum FAIR:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum GOOD:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum GREAT:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum MEH:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum POOR:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum SUPERB:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum TERRIBLE:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum TOTALLYNINJA:Lcom/uwetrottmann/trakt5/enums/Rating;

.field public static final enum WEAKSAUCE:Lcom/uwetrottmann/trakt5/enums/Rating;


# instance fields
.field public value:I


# direct methods
.method private static synthetic $values()[Lcom/uwetrottmann/trakt5/enums/Rating;
    .locals 3

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    new-array v0, v0, [Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 4
    .line 5
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->WEAKSAUCE:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    aput-object v1, v0, v2

    .line 9
    .line 10
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->TERRIBLE:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    aput-object v1, v0, v2

    .line 14
    .line 15
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->BAD:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    aput-object v1, v0, v2

    .line 19
    .line 20
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->POOR:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 21
    .line 22
    const/4 v2, 0x3

    .line 23
    aput-object v1, v0, v2

    .line 24
    .line 25
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->MEH:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    aput-object v1, v0, v2

    .line 29
    .line 30
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->FAIR:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 31
    .line 32
    const/4 v2, 0x5

    .line 33
    aput-object v1, v0, v2

    .line 34
    .line 35
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->GOOD:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 36
    .line 37
    const/4 v2, 0x6

    .line 38
    aput-object v1, v0, v2

    .line 39
    .line 40
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->GREAT:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    aput-object v1, v0, v2

    .line 44
    .line 45
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->SUPERB:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 46
    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    aput-object v1, v0, v2

    .line 50
    .line 51
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Rating;->TOTALLYNINJA:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    aput-object v1, v0, v2

    .line 56
    .line 57
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 2
    .line 3
    const-string v1, "WEAKSAUCE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->WEAKSAUCE:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 11
    .line 12
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 13
    .line 14
    const-string v1, "TERRIBLE"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->TERRIBLE:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 21
    .line 22
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 23
    .line 24
    const-string v1, "BAD"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->BAD:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 31
    .line 32
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 33
    .line 34
    const-string v1, "POOR"

    .line 35
    .line 36
    const/4 v2, 0x4

    .line 37
    invoke-direct {v0, v1, v3, v2}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->POOR:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 41
    .line 42
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 43
    .line 44
    const-string v1, "MEH"

    .line 45
    .line 46
    const/4 v3, 0x5

    .line 47
    invoke-direct {v0, v1, v2, v3}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->MEH:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 51
    .line 52
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 53
    .line 54
    const-string v1, "FAIR"

    .line 55
    .line 56
    const/4 v2, 0x6

    .line 57
    invoke-direct {v0, v1, v3, v2}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->FAIR:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 61
    .line 62
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 63
    .line 64
    const-string v1, "GOOD"

    .line 65
    .line 66
    const/4 v3, 0x7

    .line 67
    invoke-direct {v0, v1, v2, v3}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->GOOD:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 71
    .line 72
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 73
    .line 74
    const-string v1, "GREAT"

    .line 75
    .line 76
    const/16 v2, 0x8

    .line 77
    .line 78
    invoke-direct {v0, v1, v3, v2}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->GREAT:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 82
    .line 83
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 84
    .line 85
    const-string v1, "SUPERB"

    .line 86
    .line 87
    const/16 v3, 0x9

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v3}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->SUPERB:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 93
    .line 94
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 95
    .line 96
    const-string v1, "TOTALLYNINJA"

    .line 97
    .line 98
    const/16 v2, 0xa

    .line 99
    .line 100
    invoke-direct {v0, v1, v3, v2}, Lcom/uwetrottmann/trakt5/enums/Rating;-><init>(Ljava/lang/String;II)V

    .line 101
    .line 102
    .line 103
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->TOTALLYNINJA:Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 104
    .line 105
    invoke-static {}, Lcom/uwetrottmann/trakt5/enums/Rating;->$values()[Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->$VALUES:[Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 110
    .line 111
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/uwetrottmann/trakt5/enums/Rating;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(I)Lcom/uwetrottmann/trakt5/enums/Rating;
    .locals 1

    .line 1
    invoke-static {}, Lcom/uwetrottmann/trakt5/enums/Rating;->values()[Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    add-int/lit8 p0, p0, -0x1

    .line 6
    .line 7
    aget-object p0, v0, p0

    .line 8
    .line 9
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/Rating;
    .locals 1

    .line 1
    const-class v0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/uwetrottmann/trakt5/enums/Rating;
    .locals 1

    .line 1
    sget-object v0, Lcom/uwetrottmann/trakt5/enums/Rating;->$VALUES:[Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/uwetrottmann/trakt5/enums/Rating;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/uwetrottmann/trakt5/enums/Rating;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/uwetrottmann/trakt5/enums/Rating;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
