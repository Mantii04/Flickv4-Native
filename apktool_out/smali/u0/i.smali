.class public final Lu0/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lu0/j;


# direct methods
.method public constructor <init>(Lu0/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu0/i;->b:Lu0/j;

    .line 2
    .line 3
    const-string p1, "ExoPlayer:SimpleDecoder"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu0/i;->b:Lu0/j;

    .line 2
    .line 3
    invoke-static {v0}, Lu0/j;->access$000(Lu0/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
