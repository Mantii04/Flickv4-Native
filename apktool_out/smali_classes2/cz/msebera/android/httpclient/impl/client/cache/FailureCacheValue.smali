.class public Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcz/msebera/android/httpclient/annotation/Contract;
    threading = .enum Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;->IMMUTABLE:Lcz/msebera/android/httpclient/annotation/ThreadingBehavior;
.end annotation


# instance fields
.field private final creationTimeInNanos:J

.field private final errorCount:I

.field private final key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->creationTimeInNanos:J

    .line 9
    .line 10
    iput-object p1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->key:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->errorCount:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getCreationTimeInNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->creationTimeInNanos:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getErrorCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->errorCount:I

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[entry creationTimeInNanos="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->creationTimeInNanos:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "; key="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->key:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, "; errorCount="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcz/msebera/android/httpclient/impl/client/cache/FailureCacheValue;->errorCount:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v1, 0x5d

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
