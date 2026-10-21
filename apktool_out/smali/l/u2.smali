.class public final synthetic Ll/u2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic e:Ll/v2;


# direct methods
.method public synthetic constructor <init>(Ll/v2;I)V
    .locals 0

    .line 1
    iput p2, p0, Ll/u2;->b:I

    iput-object p1, p0, Ll/u2;->e:Ll/v2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Ll/u2;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ll/u2;->e:Ll/v2;

    .line 7
    .line 8
    invoke-virtual {v0}, Ll/v2;->a()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    const/4 v0, 0x0

    .line 13
    iget-object v1, p0, Ll/u2;->e:Ll/v2;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Ll/v2;->c(Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
