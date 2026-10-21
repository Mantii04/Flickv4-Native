.class public final Lw2/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;

.field public final b:Lo2/b;


# direct methods
.method public constructor <init>(Ljava/util/List;Lo2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw2/d;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lw2/d;->b:Lo2/b;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/graphics/ImageDecoder$Source;IILl2/q;)Lw2/a;
    .locals 1

    .line 1
    new-instance v0, Lt2/c;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lt2/c;-><init>(IILl2/q;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/common/a;->i(Landroid/graphics/ImageDecoder$Source;Lt2/c;)Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/a;->w(Landroid/graphics/drawable/Drawable;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Lw2/a;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/common/a;->h(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/AnimatedImageDrawable;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-direct {p1, p0}, Lw2/a;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    .line 23
    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_0
    new-instance p1, Ljava/io/IOException;

    .line 27
    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    const-string p3, "Received unexpected drawable type for animated image, failing: "

    .line 31
    .line 32
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public static byteBufferDecoder(Ljava/util/List;Lo2/b;)Ll2/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll2/c;",
            ">;",
            "Lo2/b;",
            ")",
            "Ll2/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lw2/b;

    .line 2
    .line 3
    new-instance v1, Lw2/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lw2/d;-><init>(Ljava/util/List;Lo2/b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lw2/b;-><init>(Lw2/d;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static streamDecoder(Ljava/util/List;Lo2/b;)Ll2/r;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll2/c;",
            ">;",
            "Lo2/b;",
            ")",
            "Ll2/r;"
        }
    .end annotation

    .line 1
    new-instance v0, Lw2/c;

    .line 2
    .line 3
    new-instance v1, Lw2/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lw2/d;-><init>(Ljava/util/List;Lo2/b;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lw2/c;-><init>(Lw2/d;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
