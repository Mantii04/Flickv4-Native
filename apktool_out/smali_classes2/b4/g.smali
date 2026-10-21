.class public final Lb4/g;
.super Landroid/content/ContextWrapper;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lb4/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lb4/g;->a:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Lb4/i;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, v1, p2, p1}, Lb4/i;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lb4/g;->b:Lb4/i;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public getApplicationContext()Landroid/content/Context;
    .locals 0

    .line 1
    return-object p0
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/g;->b:Lb4/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb4/g;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
