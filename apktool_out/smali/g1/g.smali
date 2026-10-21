.class public final Lg1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:Lg1/d;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lp/g;

.field public final c:Landroid/util/SparseBooleanArray;

.field public final d:Lg1/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lg1/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg1/g;->e:Lg1/d;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lg1/g;->a:Ljava/util/ArrayList;

    .line 5
    .line 6
    new-instance p2, Landroid/util/SparseBooleanArray;

    .line 7
    .line 8
    invoke-direct {p2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lg1/g;->c:Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    new-instance p2, Lp/g;

    .line 14
    .line 15
    invoke-direct {p2}, Lp/g;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lg1/g;->b:Lp/g;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/high16 v0, -0x80000000

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    :goto_0
    if-ge v2, p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    check-cast v3, Lg1/f;

    .line 35
    .line 36
    invoke-virtual {v3}, Lg1/f;->getPopulation()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-le v4, v0, :cond_0

    .line 41
    .line 42
    invoke-virtual {v3}, Lg1/f;->getPopulation()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    move-object v1, v3

    .line 47
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iput-object v1, p0, Lg1/g;->d:Lg1/f;

    .line 51
    .line 52
    return-void
.end method

.method public static from(Landroid/graphics/Bitmap;)Lg1/e;
    .locals 1

    .line 1
    new-instance v0, Lg1/e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lg1/e;-><init>(Landroid/graphics/Bitmap;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public getColorForTarget(Lg1/h;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lg1/g;->getSwatchForTarget(Lg1/h;)Lg1/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lg1/f;->getRgb()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :cond_0
    return p2
.end method

.method public getDarkVibrantColor(I)I
    .locals 1

    .line 1
    sget-object v0, Lg1/h;->f:Lg1/h;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lg1/g;->getColorForTarget(Lg1/h;I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSwatchForTarget(Lg1/h;)Lg1/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lg1/g;->b:Lp/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lp/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lg1/f;

    .line 8
    .line 9
    return-object p1
.end method

.method public getSwatches()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg1/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg1/g;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
