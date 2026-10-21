.class public Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowVideo"
.end annotation


# instance fields
.field filename:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filename"
    .end annotation
.end field

.field id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;->id:I

    .line 5
    .line 6
    iput-object p2, p0, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;->filename:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getFilename()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;->filename:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;->id:I

    .line 2
    .line 3
    return v0
.end method
