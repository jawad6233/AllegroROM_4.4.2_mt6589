.class Lcom/mediatek/incallui/vt/VTCallFragment$2;
.super Ljava/lang/Object;
.source "VTCallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/incallui/vt/VTCallFragment;->onVTInCallVideoSettingLocalEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/incallui/vt/VTCallFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/incallui/vt/VTCallFragment;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/mediatek/incallui/vt/VTCallFragment$2;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 405
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$2;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$2;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    # getter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$300(Lcom/mediatek/incallui/vt/VTCallFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 407
    iget-object v0, p0, Lcom/mediatek/incallui/vt/VTCallFragment$2;->this$0:Lcom/mediatek/incallui/vt/VTCallFragment;

    const/4 v1, 0x0

    # setter for: Lcom/mediatek/incallui/vt/VTCallFragment;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/mediatek/incallui/vt/VTCallFragment;->access$302(Lcom/mediatek/incallui/vt/VTCallFragment;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 409
    :cond_0
    return-void
.end method