.class public abstract LY5/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public b:J

.field public e:LY5/k;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 4
    sget-object v0, LY5/n;->g:LY5/l;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2, v0}, LY5/j;-><init>(JLY5/k;)V

    return-void
.end method

.method public constructor <init>(JLY5/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, LY5/j;->b:J

    .line 3
    iput-object p3, p0, LY5/j;->e:LY5/k;

    return-void
.end method
