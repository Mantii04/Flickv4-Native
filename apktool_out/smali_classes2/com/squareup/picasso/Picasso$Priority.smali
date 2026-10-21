.class public final enum Lcom/squareup/picasso/Picasso$Priority;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/picasso/Picasso$Priority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/squareup/picasso/Picasso$Priority;

.field public static final enum e:Lcom/squareup/picasso/Picasso$Priority;

.field public static final synthetic f:[Lcom/squareup/picasso/Picasso$Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    new-instance v3, Lcom/squareup/picasso/Picasso$Priority;

    .line 5
    .line 6
    const-string v4, "LOW"

    .line 7
    .line 8
    invoke-direct {v3, v4, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    sput-object v3, Lcom/squareup/picasso/Picasso$Priority;->b:Lcom/squareup/picasso/Picasso$Priority;

    .line 12
    .line 13
    new-instance v4, Lcom/squareup/picasso/Picasso$Priority;

    .line 14
    .line 15
    const-string v5, "NORMAL"

    .line 16
    .line 17
    invoke-direct {v4, v5, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput-object v4, Lcom/squareup/picasso/Picasso$Priority;->e:Lcom/squareup/picasso/Picasso$Priority;

    .line 21
    .line 22
    new-instance v5, Lcom/squareup/picasso/Picasso$Priority;

    .line 23
    .line 24
    const-string v6, "HIGH"

    .line 25
    .line 26
    invoke-direct {v5, v6, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    const/4 v6, 0x3

    .line 30
    new-array v6, v6, [Lcom/squareup/picasso/Picasso$Priority;

    .line 31
    .line 32
    aput-object v3, v6, v2

    .line 33
    .line 34
    aput-object v4, v6, v1

    .line 35
    .line 36
    aput-object v5, v6, v0

    .line 37
    .line 38
    sput-object v6, Lcom/squareup/picasso/Picasso$Priority;->f:[Lcom/squareup/picasso/Picasso$Priority;

    .line 39
    .line 40
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .line 1
    const-class v0, Lcom/squareup/picasso/Picasso$Priority;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/squareup/picasso/Picasso$Priority;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .line 1
    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->f:[Lcom/squareup/picasso/Picasso$Priority;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/squareup/picasso/Picasso$Priority;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/squareup/picasso/Picasso$Priority;

    .line 8
    .line 9
    return-object v0
.end method
