.class public final LL4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL4/e;


# instance fields
.field public final synthetic a:Lflix/com/vision/bvp/subtitle/CaptionsView;


# direct methods
.method public constructor <init>(Lflix/com/vision/bvp/subtitle/CaptionsView;Ljava/net/URL;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LL4/a;->a:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDownload(Ljava/io/File;)V
    .locals 2

    .line 1
    iget-object v0, p0, LL4/a;->a:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v1, Lflix/com/vision/bvp/subtitle/CaptionsView;->w:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lflix/com/vision/bvp/subtitle/CaptionsView;->n(Ljava/lang/String;)Ljava/util/TreeMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, v0, Lflix/com/vision/bvp/subtitle/CaptionsView;->s:Ljava/util/TreeMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    return-void

    .line 16
    :catch_0
    sget-object p1, Lflix/com/vision/bvp/subtitle/CaptionsView;->w:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onFail(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    sget-object p1, Lflix/com/vision/bvp/subtitle/CaptionsView;->w:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, LL4/a;->a:Lflix/com/vision/bvp/subtitle/CaptionsView;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    return-void
.end method
