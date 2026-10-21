.class public Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowParams"
.end annotation


# instance fields
.field expires:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires"
    .end annotation
.end field

.field token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;->token:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;->expires:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getExpires()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;->expires:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
