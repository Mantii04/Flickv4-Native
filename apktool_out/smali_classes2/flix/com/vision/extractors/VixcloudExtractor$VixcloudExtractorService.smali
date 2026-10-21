.class interface abstract Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflix/com/vision/extractors/VixcloudExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VixcloudExtractorService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowParams;,
        Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$WindowVideo;,
        Lflix/com/vision/extractors/VixcloudExtractor$VixcloudExtractorService$Builder;
    }
.end annotation


# virtual methods
.method public abstract getSource(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lj6/h;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64)"
        }
    .end annotation
.end method
