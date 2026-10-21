.class public final enum Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public static final enum e:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

.field public static final synthetic f:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    new-instance v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 4
    .line 5
    const-string v3, "SIMULTANEOUSLY"

    .line 6
    .line 7
    invoke-direct {v2, v3, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v2, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 11
    .line 12
    new-instance v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 13
    .line 14
    const-string v4, "INDIVIDUALLY"

    .line 15
    .line 16
    invoke-direct {v3, v4, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v3, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->e:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v4, v4, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 23
    .line 24
    aput-object v2, v4, v1

    .line 25
    .line 26
    aput-object v3, v4, v0

    .line 27
    .line 28
    sput-object v4, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->f:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 29
    .line 30
    return-void
.end method

.method public static forId(I)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-ne p0, v0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->e:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v1, "Unknown trim path type "

    .line 13
    .line 14
    invoke-static {p0, v1}, LA/i;->f(ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0

    .line 22
    :cond_1
    sget-object p0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->b:Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 23
    .line 24
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->f:[Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/model/content/ShapeTrimPath$Type;

    .line 8
    .line 9
    return-object v0
.end method
