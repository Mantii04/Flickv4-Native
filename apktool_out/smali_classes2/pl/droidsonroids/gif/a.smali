.class public final Lpl/droidsonroids/gif/a;
.super Ln6/g;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lpl/droidsonroids/gif/c;


# direct methods
.method public constructor <init>(Lpl/droidsonroids/gif/c;Lpl/droidsonroids/gif/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lpl/droidsonroids/gif/a;->e:Lpl/droidsonroids/gif/c;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Ln6/g;-><init>(Lpl/droidsonroids/gif/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 2

    .line 1
    iget-object v0, p0, Lpl/droidsonroids/gif/a;->e:Lpl/droidsonroids/gif/c;

    .line 2
    .line 3
    iget-object v1, v0, Lpl/droidsonroids/gif/c;->p:Lpl/droidsonroids/gif/GifInfoHandle;

    .line 4
    .line 5
    invoke-virtual {v1}, Lpl/droidsonroids/gif/GifInfoHandle;->m()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lpl/droidsonroids/gif/c;->start()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
