.class public final Ln4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/thebluealliance/spectrum/a;


# direct methods
.method public constructor <init>(Lcom/thebluealliance/spectrum/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ln4/b;->b:Lcom/thebluealliance/spectrum/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Ln4/b;->b:Lcom/thebluealliance/spectrum/a;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/thebluealliance/spectrum/a;->C0:Ln4/d;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p2, p2, Lcom/thebluealliance/spectrum/a;->z0:I

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1, p2}, Ln4/d;->onColorSelected(ZI)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void
.end method
