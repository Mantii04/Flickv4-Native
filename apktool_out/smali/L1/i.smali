.class public final synthetic LL1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, LL1/i;->b:I

    iput-object p1, p0, LL1/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, LL1/i;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LL1/i;->e:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/ConfigStorageClient;->read()Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0

    .line 15
    :pswitch_0
    iget-object v0, p0, LL1/i;->e:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent;->getDefault()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0

    .line 24
    :pswitch_1
    iget-object v0, p0, LL1/i;->e:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v0, Lcom/google/firebase/installations/FirebaseInstallations;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/firebase/installations/FirebaseInstallations;->a(Lcom/google/firebase/installations/FirebaseInstallations;)Ljava/lang/Void;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :pswitch_2
    const-string v0, "this$0"

    .line 34
    .line 35
    iget-object v1, p0, LL1/i;->e:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, LL1/k;

    .line 38
    .line 39
    invoke-static {v1, v0}, Lkotlin/jvm/internal/j;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v1, LL1/k;->a:Landroidx/work/impl/WorkDatabase;

    .line 43
    .line 44
    const-string v1, "next_alarm_manager_id"

    .line 45
    .line 46
    invoke-static {v0, v1}, LL1/l;->access$nextId(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
