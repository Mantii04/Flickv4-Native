.class public final Lm4/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field public final b:Landroid/graphics/Bitmap;

.field public final c:Le6/L;

.field public final d:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2

    .line 1
    sget-object v0, Lm4/W;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lm4/K;-><init>(Landroid/graphics/Bitmap;Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-void

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "bitmap == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_3

    .line 6
    iput-object p1, p0, Lm4/K;->b:Landroid/graphics/Bitmap;

    .line 7
    iput-object p2, p0, Lm4/K;->c:Le6/L;

    .line 8
    sget-object p1, Lm4/W;->a:Ljava/lang/StringBuilder;

    if-eqz p3, :cond_2

    iput-object p3, p0, Lm4/K;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 9
    iput p4, p0, Lm4/K;->d:I

    return-void

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "loadedFrom == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public constructor <init>(Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .locals 2

    .line 3
    sget-object v0, Lm4/W;->a:Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p2, v0}, Lm4/K;-><init>(Landroid/graphics/Bitmap;Le6/L;Lcom/squareup/picasso/Picasso$LoadedFrom;I)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "source == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/K;->b:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/K;->a:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSource()Le6/L;
    .locals 1

    .line 1
    iget-object v0, p0, Lm4/K;->c:Le6/L;

    .line 2
    .line 3
    return-object v0
.end method
