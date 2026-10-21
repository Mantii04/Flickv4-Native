.class public Lcz/msebera/android/httpclient/client/cache/InputLimit;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private reached:Z

.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->value:J

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->value:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isReached()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached:Z

    .line 2
    .line 3
    return v0
.end method

.method public reached()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcz/msebera/android/httpclient/client/cache/InputLimit;->reached:Z

    .line 3
    .line 4
    return-void
.end method
