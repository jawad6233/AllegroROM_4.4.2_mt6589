.class Landroid/app/Activity$3;
.super Ljava/lang/Object;
.source "Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Activity;->checkCUApplication(Landroid/content/Intent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0

    .prologue
    .line 5548
    iput-object p1, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    iput-object p2, p0, Landroid/app/Activity$3;->val$intent:Landroid/content/Intent;

    iput p3, p0, Landroid/app/Activity$3;->val$requestCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 5555
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 5556
    iget-object v0, p0, Landroid/app/Activity$3;->this$0:Landroid/app/Activity;

    iget-object v1, p0, Landroid/app/Activity$3;->val$intent:Landroid/content/Intent;

    iget v2, p0, Landroid/app/Activity$3;->val$requestCode:I

    # invokes: Landroid/app/Activity;->startActivityForResult_CU(Landroid/content/Intent;I)V
    invoke-static {v0, v1, v2}, Landroid/app/Activity;->access$400(Landroid/app/Activity;Landroid/content/Intent;I)V

    .line 5557
    return-void
.end method