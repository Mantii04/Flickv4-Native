.class public final enum Lorg/jsoup/Connection$Method;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jsoup/Connection$Method;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lorg/jsoup/Connection$Method;

.field public static final enum f:Lorg/jsoup/Connection$Method;

.field public static final synthetic j:[Lorg/jsoup/Connection$Method;


# instance fields
.field public final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lorg/jsoup/Connection$Method;

    .line 2
    .line 3
    const-string v1, "GET"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lorg/jsoup/Connection$Method;->e:Lorg/jsoup/Connection$Method;

    .line 10
    .line 11
    new-instance v1, Lorg/jsoup/Connection$Method;

    .line 12
    .line 13
    const-string v3, "POST"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Lorg/jsoup/Connection$Method;

    .line 20
    .line 21
    const-string v5, "PUT"

    .line 22
    .line 23
    const/4 v6, 0x2

    .line 24
    invoke-direct {v3, v5, v6, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    .line 25
    .line 26
    .line 27
    new-instance v5, Lorg/jsoup/Connection$Method;

    .line 28
    .line 29
    const-string v7, "DELETE"

    .line 30
    .line 31
    const/4 v8, 0x3

    .line 32
    invoke-direct {v5, v7, v8, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    .line 33
    .line 34
    .line 35
    new-instance v7, Lorg/jsoup/Connection$Method;

    .line 36
    .line 37
    const-string v9, "PATCH"

    .line 38
    .line 39
    const/4 v10, 0x4

    .line 40
    invoke-direct {v7, v9, v10, v4}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    .line 41
    .line 42
    .line 43
    new-instance v9, Lorg/jsoup/Connection$Method;

    .line 44
    .line 45
    const-string v11, "HEAD"

    .line 46
    .line 47
    const/4 v12, 0x5

    .line 48
    invoke-direct {v9, v11, v12, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    .line 49
    .line 50
    .line 51
    sput-object v9, Lorg/jsoup/Connection$Method;->f:Lorg/jsoup/Connection$Method;

    .line 52
    .line 53
    new-instance v11, Lorg/jsoup/Connection$Method;

    .line 54
    .line 55
    const-string v13, "OPTIONS"

    .line 56
    .line 57
    const/4 v14, 0x6

    .line 58
    invoke-direct {v11, v13, v14, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    .line 59
    .line 60
    .line 61
    new-instance v13, Lorg/jsoup/Connection$Method;

    .line 62
    .line 63
    const-string v15, "TRACE"

    .line 64
    .line 65
    move/from16 v16, v4

    .line 66
    .line 67
    const/4 v4, 0x7

    .line 68
    invoke-direct {v13, v15, v4, v2}, Lorg/jsoup/Connection$Method;-><init>(Ljava/lang/String;IZ)V

    .line 69
    .line 70
    .line 71
    const/16 v15, 0x8

    .line 72
    .line 73
    new-array v15, v15, [Lorg/jsoup/Connection$Method;

    .line 74
    .line 75
    aput-object v0, v15, v2

    .line 76
    .line 77
    aput-object v1, v15, v16

    .line 78
    .line 79
    aput-object v3, v15, v6

    .line 80
    .line 81
    aput-object v5, v15, v8

    .line 82
    .line 83
    aput-object v7, v15, v10

    .line 84
    .line 85
    aput-object v9, v15, v12

    .line 86
    .line 87
    aput-object v11, v15, v14

    .line 88
    .line 89
    aput-object v13, v15, v4

    .line 90
    .line 91
    sput-object v15, Lorg/jsoup/Connection$Method;->j:[Lorg/jsoup/Connection$Method;

    .line 92
    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-boolean p3, p0, Lorg/jsoup/Connection$Method;->b:Z

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jsoup/Connection$Method;
    .locals 1

    .line 1
    const-class v0, Lorg/jsoup/Connection$Method;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/jsoup/Connection$Method;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lorg/jsoup/Connection$Method;
    .locals 1

    .line 1
    sget-object v0, Lorg/jsoup/Connection$Method;->j:[Lorg/jsoup/Connection$Method;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lorg/jsoup/Connection$Method;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lorg/jsoup/Connection$Method;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final hasBody()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/jsoup/Connection$Method;->b:Z

    .line 2
    .line 3
    return v0
.end method
