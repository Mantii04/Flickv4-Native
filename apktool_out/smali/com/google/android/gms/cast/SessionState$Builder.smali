.class public Lcom/google/android/gms/cast/SessionState$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/cast/SessionState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public a:Lcom/google/android/gms/cast/MediaLoadRequestData;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/cast/SessionState;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/SessionState;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/SessionState$Builder;->a:Lcom/google/android/gms/cast/MediaLoadRequestData;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/cast/SessionState;-><init>(Lcom/google/android/gms/cast/MediaLoadRequestData;Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public setLoadRequestData(Lcom/google/android/gms/cast/MediaLoadRequestData;)Lcom/google/android/gms/cast/SessionState$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/cast/SessionState$Builder;->a:Lcom/google/android/gms/cast/MediaLoadRequestData;

    return-object p0
.end method
