.class public final synthetic Ln1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ln1/z;


# direct methods
.method public synthetic constructor <init>(Ln1/z;I)V
    .locals 0

    .line 1
    iput p2, p0, Ln1/v;->b:I

    iput-object p1, p0, Ln1/v;->e:Ln1/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Ln1/v;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    iget-object v1, p0, Ln1/v;->e:Ln1/z;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, v1, Ln1/z;->b:Ln1/u;

    .line 14
    .line 15
    invoke-virtual {v1}, Ln1/z;->getObserver()Ln1/r;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ln1/u;->removeObserver(Ln1/r;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :pswitch_0
    iget-object v0, p0, Ln1/v;->e:Ln1/z;

    .line 24
    .line 25
    const-string v1, "this$0"

    .line 26
    .line 27
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    iget-object v1, v0, Ln1/z;->f:Ln1/m;

    .line 31
    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    iget-object v2, v0, Ln1/z;->g:Ln1/x;

    .line 35
    .line 36
    iget-object v3, v0, Ln1/z;->a:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1, v2, v3}, Ln1/m;->registerCallback(Ln1/j;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iput v1, v0, Ln1/z;->d:I

    .line 43
    .line 44
    iget-object v1, v0, Ln1/z;->b:Ln1/u;

    .line 45
    .line 46
    invoke-virtual {v0}, Ln1/z;->getObserver()Ln1/r;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v1, v0}, Ln1/u;->addObserver(Ln1/r;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    const-string v1, "ROOM"

    .line 56
    .line 57
    const-string v2, "Cannot register multi-instance invalidation callback"

    .line 58
    .line 59
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    .line 61
    .line 62
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
