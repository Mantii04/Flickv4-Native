.class public final enum Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/uwetrottmann/trakt5/enums/TraktEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;",
        ">;",
        "Lcom/uwetrottmann/trakt5/enums/TraktEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

.field public static final enum COLLECTED:Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

.field private static final STRING_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum WATCHED:Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 3
    .line 4
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->COLLECTED:Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->WATCHED:Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 2
    .line 3
    const-string v1, "collected"

    .line 4
    .line 5
    const-string v2, "COLLECTED"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->COLLECTED:Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 12
    .line 13
    new-instance v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "watched"

    .line 17
    .line 18
    const-string v4, "WATCHED"

    .line 19
    .line 20
    invoke-direct {v0, v4, v1, v2}, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->WATCHED:Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 24
    .line 25
    invoke-static {}, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->$values()[Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->$VALUES:[Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 30
    .line 31
    new-instance v0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    sput-object v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->STRING_MAPPING:Ljava/util/Map;

    .line 37
    .line 38
    invoke-static {}, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->values()[Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    array-length v1, v0

    .line 43
    :goto_0
    if-ge v3, v1, :cond_0

    .line 44
    .line 45
    aget-object v2, v0, v3

    .line 46
    .line 47
    sget-object v4, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->STRING_MAPPING:Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {v2}, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 54
    .line 55
    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
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
    iput-object p3, p0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;
    .locals 2

    .line 1
    sget-object v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->STRING_MAPPING:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 14
    .line 15
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;
    .locals 1

    .line 1
    const-class v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;
    .locals 1

    .line 1
    sget-object v0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->$VALUES:[Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/uwetrottmann/trakt5/enums/ProgressLastActivity;->value:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
