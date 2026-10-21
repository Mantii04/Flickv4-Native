.class public final LZ4/p;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:LZ4/t;


# direct methods
.method public constructor <init>(LZ4/t;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZ4/p;->b:LZ4/t;

    .line 2
    .line 3
    iput-object p2, p0, LZ4/p;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LZ4/p;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object p1, p0, LZ4/p;->a:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lg6/e;->connect(Ljava/lang/String;)Lg6/d;

    move-result-object v0

    check-cast v0, Lh6/h;

    invoke-virtual {v0}, Lh6/h;->get()Lj6/h;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lorg/jsoup/nodes/b;->html()Ljava/lang/String;

    move-result-object v0

    .line 4
    const-string v1, "Checking if the site connection is secure"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Checking your browser before accessing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, LZ4/p;->b:LZ4/t;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, LZ4/t;->e(Ljava/lang/String;Z)V

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    new-instance v0, LZ4/q;

    invoke-direct {v0}, LZ4/q;-><init>()V

    .line 7
    iput-object p1, v0, LZ4/q;->a:Ljava/lang/String;

    .line 8
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 9
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    new-instance v0, LZ4/q;

    invoke-direct {v0}, LZ4/q;-><init>()V

    .line 11
    iput-object p1, v0, LZ4/q;->a:Ljava/lang/String;

    .line 12
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LZ4/p;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method public onPostExecute(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
