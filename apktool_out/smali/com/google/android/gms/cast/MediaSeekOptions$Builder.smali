.class public Lcom/google/android/gms/cast/MediaSeekOptions$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/MediaSeekOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:J

.field public b:I

.field public c:Z

.field public d:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->b:I

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/MediaSeekOptions;
    .locals 6

    new-instance v0, Lcom/google/android/gms/cast/MediaSeekOptions;

    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->a:J

    iget v3, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->b:I

    iget-boolean v4, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->c:Z

    iget-object v5, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->d:Lorg/json/JSONObject;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/cast/MediaSeekOptions;-><init>(JIZLorg/json/JSONObject;)V

    return-object v0
.end method

.method public setCustomData(Lorg/json/JSONObject;)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->d:Lorg/json/JSONObject;

    return-object p0
.end method

.method public setIsSeekToInfinite(Z)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->c:Z

    return-object p0
.end method

.method public setPosition(J)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->a:J

    return-object p0
.end method

.method public setResumeState(I)Lcom/google/android/gms/cast/MediaSeekOptions$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/cast/MediaSeekOptions$Builder;->b:I

    return-object p0
.end method
