.class public final Lt2/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll2/t;


# static fields
.field public static final b:Lt2/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt2/e;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt2/e;->b:Lt2/e;

    .line 7
    .line 8
    return-void
.end method

.method public static get()Lt2/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lt2/e;"
        }
    .end annotation

    .line 1
    sget-object v0, Lt2/e;->b:Lt2/e;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public transform(Landroid/content/Context;Ln2/M;II)Ln2/M;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ln2/M;",
            "II)",
            "Ln2/M;"
        }
    .end annotation

    .line 1
    return-object p2
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0

    .line 1
    return-void
.end method
