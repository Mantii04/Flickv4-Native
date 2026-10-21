.class public final enum Lcom/uwetrottmann/trakt5/enums/Type;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/uwetrottmann/trakt5/enums/TraktEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uwetrottmann/trakt5/enums/Type;",
        ">;",
        "Lcom/uwetrottmann/trakt5/enums/TraktEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uwetrottmann/trakt5/enums/Type;

.field public static final enum EPISODE:Lcom/uwetrottmann/trakt5/enums/Type;

.field public static final enum LIST:Lcom/uwetrottmann/trakt5/enums/Type;

.field public static final enum MOVIE:Lcom/uwetrottmann/trakt5/enums/Type;

.field public static final enum PERSON:Lcom/uwetrottmann/trakt5/enums/Type;

.field public static final enum SHOW:Lcom/uwetrottmann/trakt5/enums/Type;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/uwetrottmann/trakt5/enums/Type;
    .locals 3

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v0, v0, [Lcom/uwetrottmann/trakt5/enums/Type;

    .line 3
    .line 4
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Type;->MOVIE:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Type;->SHOW:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Type;->EPISODE:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Type;->PERSON:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 20
    .line 21
    const/4 v2, 0x3

    .line 22
    aput-object v1, v0, v2

    .line 23
    .line 24
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/Type;->LIST:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    aput-object v1, v0, v2

    .line 28
    .line 29
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Type;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "movie"

    .line 5
    .line 6
    const-string v3, "MOVIE"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/uwetrottmann/trakt5/enums/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Type;->MOVIE:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 12
    .line 13
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Type;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "show"

    .line 17
    .line 18
    const-string v3, "SHOW"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/uwetrottmann/trakt5/enums/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Type;->SHOW:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 24
    .line 25
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Type;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "episode"

    .line 29
    .line 30
    const-string v3, "EPISODE"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/uwetrottmann/trakt5/enums/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Type;->EPISODE:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 36
    .line 37
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Type;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "person"

    .line 41
    .line 42
    const-string v3, "PERSON"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/uwetrottmann/trakt5/enums/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Type;->PERSON:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 48
    .line 49
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/Type;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "list"

    .line 53
    .line 54
    const-string v3, "LIST"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/uwetrottmann/trakt5/enums/Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Type;->LIST:Lcom/uwetrottmann/trakt5/enums/Type;

    .line 60
    .line 61
    invoke-static {}, Lcom/uwetrottmann/trakt5/enums/Type;->$values()[Lcom/uwetrottmann/trakt5/enums/Type;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/Type;->$VALUES:[Lcom/uwetrottmann/trakt5/enums/Type;

    .line 66
    .line 67
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
    iput-object p3, p0, Lcom/uwetrottmann/trakt5/enums/Type;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/Type;
    .locals 1

    .line 1
    const-class v0, Lcom/uwetrottmann/trakt5/enums/Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/uwetrottmann/trakt5/enums/Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/uwetrottmann/trakt5/enums/Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/uwetrottmann/trakt5/enums/Type;->$VALUES:[Lcom/uwetrottmann/trakt5/enums/Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/uwetrottmann/trakt5/enums/Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/uwetrottmann/trakt5/enums/Type;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/enums/Type;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
