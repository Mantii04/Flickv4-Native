.class public final enum Lcom/skydoves/powerspinner/SpinnerAnimation;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/skydoves/powerspinner/SpinnerAnimation;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum e:Lcom/skydoves/powerspinner/SpinnerAnimation;

.field public static final enum f:Lcom/skydoves/powerspinner/SpinnerAnimation;

.field public static final enum j:Lcom/skydoves/powerspinner/SpinnerAnimation;

.field public static final enum m:Lcom/skydoves/powerspinner/SpinnerAnimation;

.field public static final synthetic n:[Lcom/skydoves/powerspinner/SpinnerAnimation;


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 2
    .line 3
    const-string v1, "DROPDOWN"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Lcom/skydoves/powerspinner/SpinnerAnimation;-><init>(Ljava/lang/String;II)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/skydoves/powerspinner/SpinnerAnimation;->e:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 10
    .line 11
    new-instance v1, Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 12
    .line 13
    const-string v3, "FADE"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v4}, Lcom/skydoves/powerspinner/SpinnerAnimation;-><init>(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->f:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 20
    .line 21
    new-instance v3, Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 22
    .line 23
    const-string v5, "BOUNCE"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v6}, Lcom/skydoves/powerspinner/SpinnerAnimation;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/skydoves/powerspinner/SpinnerAnimation;->j:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 30
    .line 31
    new-instance v5, Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 32
    .line 33
    const-string v7, "NORMAL"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v8}, Lcom/skydoves/powerspinner/SpinnerAnimation;-><init>(Ljava/lang/String;II)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/skydoves/powerspinner/SpinnerAnimation;->m:Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    new-array v7, v7, [Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 43
    .line 44
    aput-object v0, v7, v2

    .line 45
    .line 46
    aput-object v1, v7, v4

    .line 47
    .line 48
    aput-object v3, v7, v6

    .line 49
    .line 50
    aput-object v5, v7, v8

    .line 51
    .line 52
    sput-object v7, Lcom/skydoves/powerspinner/SpinnerAnimation;->n:[Lcom/skydoves/powerspinner/SpinnerAnimation;

    .line 53
    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/skydoves/powerspinner/SpinnerAnimation;->b:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/skydoves/powerspinner/SpinnerAnimation;
    .locals 1

    const-class v0, Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/skydoves/powerspinner/SpinnerAnimation;

    return-object p0
.end method

.method public static values()[Lcom/skydoves/powerspinner/SpinnerAnimation;
    .locals 1

    sget-object v0, Lcom/skydoves/powerspinner/SpinnerAnimation;->n:[Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v0}, [Lcom/skydoves/powerspinner/SpinnerAnimation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/skydoves/powerspinner/SpinnerAnimation;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/skydoves/powerspinner/SpinnerAnimation;->b:I

    .line 2
    .line 3
    return v0
.end method
