.class public abstract LC1/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x1

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    sput-wide v0, LC1/z;->a:J

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$getPRUNE_THRESHOLD_MILLIS$p()J
    .locals 2

    .line 1
    sget-wide v0, LC1/z;->a:J

    .line 2
    .line 3
    return-wide v0
.end method
