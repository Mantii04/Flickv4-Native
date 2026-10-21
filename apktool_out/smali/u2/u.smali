.class public abstract Lu2/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lu2/s;

.field public static final b:Lu2/q;

.field public static final c:Lu2/r;

.field public static final d:Lu2/t;

.field public static final e:Lu2/r;

.field public static final f:Ll2/p;

.field public static final g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lu2/o;

    .line 2
    .line 3
    invoke-direct {v0}, Lu2/u;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lu2/p;

    .line 7
    .line 8
    invoke-direct {v0}, Lu2/u;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lu2/s;

    .line 12
    .line 13
    invoke-direct {v0}, Lu2/u;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lu2/u;->a:Lu2/s;

    .line 17
    .line 18
    new-instance v0, Lu2/q;

    .line 19
    .line 20
    invoke-direct {v0}, Lu2/u;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lu2/u;->b:Lu2/q;

    .line 24
    .line 25
    new-instance v0, Lu2/r;

    .line 26
    .line 27
    invoke-direct {v0}, Lu2/u;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lu2/u;->c:Lu2/r;

    .line 31
    .line 32
    new-instance v1, Lu2/t;

    .line 33
    .line 34
    invoke-direct {v1}, Lu2/u;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lu2/u;->d:Lu2/t;

    .line 38
    .line 39
    sput-object v0, Lu2/u;->e:Lu2/r;

    .line 40
    .line 41
    const-string v1, "com.bumptech.glide.load.resource.bitmap.Downsampler.DownsampleStrategy"

    .line 42
    .line 43
    invoke-static {v1, v0}, Ll2/p;->memory(Ljava/lang/String;Ljava/lang/Object;)Ll2/p;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sput-object v0, Lu2/u;->f:Ll2/p;

    .line 48
    .line 49
    const/4 v0, 0x1

    .line 50
    sput-boolean v0, Lu2/u;->g:Z

    .line 51
    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract getSampleSizeRounding(IIII)Lcom/bumptech/glide/load/resource/bitmap/DownsampleStrategy$SampleSizeRounding;
.end method

.method public abstract getScaleFactor(IIII)F
.end method
