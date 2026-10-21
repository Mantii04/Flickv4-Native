.class public final LR5/f;
.super LR5/a0;
.source "SourceFile"


# instance fields
.field public final r:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LR5/a0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LR5/f;->r:Ljava/lang/Thread;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getThread()Ljava/lang/Thread;
    .locals 1

    .line 1
    iget-object v0, p0, LR5/f;->r:Ljava/lang/Thread;

    .line 2
    .line 3
    return-object v0
.end method
