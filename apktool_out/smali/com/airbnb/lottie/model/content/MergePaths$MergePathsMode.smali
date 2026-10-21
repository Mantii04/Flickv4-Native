.class public final enum Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum e:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum f:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum j:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final enum m:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

.field public static final synthetic n:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    new-instance v5, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 7
    .line 8
    const-string v6, "MERGE"

    .line 9
    .line 10
    invoke-direct {v5, v6, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    sput-object v5, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->b:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 14
    .line 15
    new-instance v6, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 16
    .line 17
    const-string v7, "ADD"

    .line 18
    .line 19
    invoke-direct {v6, v7, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    sput-object v6, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->e:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 23
    .line 24
    new-instance v7, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 25
    .line 26
    const-string v8, "SUBTRACT"

    .line 27
    .line 28
    invoke-direct {v7, v8, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    sput-object v7, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->f:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 32
    .line 33
    new-instance v8, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 34
    .line 35
    const-string v9, "INTERSECT"

    .line 36
    .line 37
    invoke-direct {v8, v9, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    sput-object v8, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->j:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 41
    .line 42
    new-instance v9, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 43
    .line 44
    const-string v10, "EXCLUDE_INTERSECTIONS"

    .line 45
    .line 46
    invoke-direct {v9, v10, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v9, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->m:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 50
    .line 51
    const/4 v10, 0x5

    .line 52
    new-array v10, v10, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 53
    .line 54
    aput-object v5, v10, v4

    .line 55
    .line 56
    aput-object v6, v10, v3

    .line 57
    .line 58
    aput-object v7, v10, v2

    .line 59
    .line 60
    aput-object v8, v10, v1

    .line 61
    .line 62
    aput-object v9, v10, v0

    .line 63
    .line 64
    sput-object v10, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->n:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 65
    .line 66
    return-void
.end method

.method public static forId(I)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    sget-object v1, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->b:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 3
    .line 4
    if-eq p0, v0, :cond_4

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_2

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p0, v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p0, v0, :cond_0

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->m:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 20
    .line 21
    return-object p0

    .line 22
    :cond_1
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->j:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_2
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->f:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_3
    sget-object p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->e:Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_4
    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    .line 1
    const-class v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->n:[Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/airbnb/lottie/model/content/MergePaths$MergePathsMode;

    .line 8
    .line 9
    return-object v0
.end method
