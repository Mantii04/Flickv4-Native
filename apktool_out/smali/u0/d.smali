.class public final Lu0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:[B

.field public c:I

.field public d:[I

.field public e:[I

.field public f:I

.field public g:I

.field public h:I

.field public final i:Landroid/media/MediaCodec$CryptoInfo;

.field public final j:Lu0/c;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lu0/d;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 10
    .line 11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    .line 13
    const/16 v2, 0x18

    .line 14
    .line 15
    if-lt v1, v2, :cond_0

    .line 16
    .line 17
    new-instance v1, Lu0/c;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lu0/c;-><init>(Landroid/media/MediaCodec$CryptoInfo;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iput-object v1, p0, Lu0/d;->j:Lu0/c;

    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getFrameworkCryptoInfo()Landroid/media/MediaCodec$CryptoInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/d;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public increaseClearDataFirstSubSampleBy(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lu0/d;->d:[I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    new-array v0, v0, [I

    .line 10
    .line 11
    iput-object v0, p0, Lu0/d;->d:[I

    .line 12
    .line 13
    iget-object v1, p0, Lu0/d;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 14
    .line 15
    iput-object v0, v1, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lu0/d;->d:[I

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aget v2, v0, v1

    .line 21
    .line 22
    add-int/2addr v2, p1

    .line 23
    aput v2, v0, v1

    .line 24
    .line 25
    return-void
.end method

.method public set(I[I[I[B[BIII)V
    .locals 1

    .line 1
    iput p1, p0, Lu0/d;->f:I

    .line 2
    .line 3
    iput-object p2, p0, Lu0/d;->d:[I

    .line 4
    .line 5
    iput-object p3, p0, Lu0/d;->e:[I

    .line 6
    .line 7
    iput-object p4, p0, Lu0/d;->b:[B

    .line 8
    .line 9
    iput-object p5, p0, Lu0/d;->a:[B

    .line 10
    .line 11
    iput p6, p0, Lu0/d;->c:I

    .line 12
    .line 13
    iput p7, p0, Lu0/d;->g:I

    .line 14
    .line 15
    iput p8, p0, Lu0/d;->h:I

    .line 16
    .line 17
    iget-object v0, p0, Lu0/d;->i:Landroid/media/MediaCodec$CryptoInfo;

    .line 18
    .line 19
    iput p1, v0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 20
    .line 21
    iput-object p2, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 22
    .line 23
    iput-object p3, v0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 24
    .line 25
    iput-object p4, v0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 26
    .line 27
    iput-object p5, v0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 28
    .line 29
    iput p6, v0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 30
    .line 31
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    .line 33
    const/16 p2, 0x18

    .line 34
    .line 35
    if-lt p1, p2, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lu0/d;->j:Lu0/c;

    .line 38
    .line 39
    invoke-static {p1}, LP3/v;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lu0/c;

    .line 44
    .line 45
    iget-object p2, p1, Lu0/c;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 46
    .line 47
    invoke-static {p2, p7, p8}, Le/N;->n(Landroid/media/MediaCodec$CryptoInfo$Pattern;II)V

    .line 48
    .line 49
    .line 50
    iget-object p2, p1, Lu0/c;->a:Landroid/media/MediaCodec$CryptoInfo;

    .line 51
    .line 52
    iget-object p1, p1, Lu0/c;->b:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 53
    .line 54
    invoke-static {p2, p1}, Le/N;->o(Landroid/media/MediaCodec$CryptoInfo;Landroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method
