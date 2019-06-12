////
////  DetailHeaderView.swift
////  GuoHuiJR
////
////  Created by lwj on 2017/11/10.
////  Copyright © 2017年 lwj. All rights reserved.
////
//
//import UIKit
////import SnapKit
//
//class DetailHeaderView: UIView {
//
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//
//        self.backgroundColor = UIColor.white
//        self.initUI()
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//    }
//
//    func setUpHeaderView(_ detailModel : DetailModel ) {
//
//
//        let productModel : ProjectModel = detailModel.products
//
//        if productModel.type == "-1" {
//
//            self.profitLab.attributedText = handlerProfit(productModel.minProfit,"")
//            self.titleLab.text =  detailModel.profitLabel //"历史年化收益率"
//
//        }else{
//            if productModel.cashRateShow == "1"{
//                self.titleLab.text =  detailModel.profitLabel
//                self.profitLab.attributedText = handlerProfit(productModel.profit, productModel.cashRateProfit)
//            }else{
//                if productModel.profitFloat.isEmpty {
//                    self.titleLab.text =  detailModel.profitLabel
//
//                }else{
//                    self.titleLab.text =  detailModel.profitLabel//"历史年化收益率 + 平台加息"
//                }
//                self.profitLab.attributedText = handlerProfit(productModel.profit, productModel.profitFloat)
//            }
//
//
//        }
//
//        self.tagsView.tagsStr(productModel.tags)
//        tagsView.snp.makeConstraints { (make) in
//            make.centerX.equalToSuperview().offset(-tagsView.totoalWidth/2)
//            make.top.equalTo(15)
//            make.height.equalTo(15)
//        }
//
//        //新手标
//        if productModel.type == "-1" {
//            plstimeLimitValue.attributedText = handlerRichText([String(format: "%.0f", productModel.investBegin.cGFloat),"元",String(format: "\n%@", detailModel.investBeginLabel ?? "")], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])
//            //"\n起投金额"
//
//            surplusAmount.attributedText = handlerRichText([productModel.plstimeLimitValue,productModel.plstimeLimitType == "0" ? "天" : "个月", String(format: "\n%@", detailModel.plstimeLimitLabel)], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])//"\n投资期限"
//
//            let investEndValue = productModel.investEnd.cGFloat
//            if  investEndValue > 9999 {
//                productsScale.attributedText = handlerRichText([String(format: "%.2f", investEndValue/10000.0),"万",String(format: "\n%@", detailModel.investEndLabel ?? "")], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])
//                //"\n投资限额"
//            }else{
//                productsScale.attributedText = handlerRichText([String(format: "%.0f", investEndValue),"元",String(format: "\n%@", detailModel.investEndLabel ?? "")], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])//"\n投资限额"
//
//            }
//
////            titleOneLab.text = "投资期限"
////            titleTwoLab.text = "剩余金额"
//////            titleThreeLab.text = "项目总额"
////            valueOneLab.attributedText = handlerDataAndMoney(String(format: "%.f", productModel.plstimeLimitValue.cGFloat), productModel.plstimeLimitType == "0" ? "天" : "个月")
////            valueTwoLab.attributedText =  handlerMoney(NSString(moneyNoPointAndYuan: productModel.surplusAmount) as String)
////            valueThreeLab.attributedText =  handlerMoney(NSString(moneyNoPoint: productModel.productsScale) as String)
//
//
//
//        }else{
//            plstimeLimitValue.attributedText = handlerRichText([productModel.plstimeLimitValue,productModel.plstimeLimitType == "0" ? "天" : "个月",String(format: "\n%@", detailModel.plstimeLimitLabel)], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])//"\n投资期限"
//
//            let surplusAmountValue = productModel.surplusAmount.cGFloat
//            let productsScaleValue = productModel.productsScale.cGFloat
//
//            if  surplusAmountValue > 9999 {
//                //                surplusAmountAttStr = handlerInvest("剩余可投  ", String(format: "%.2f", surplusAmount/10000.0), "万元")
//                surplusAmount.attributedText = handlerRichText([String(format: "%.2f", surplusAmountValue/10000.0),"万",String(format: "\n%@", detailModel.surplusAmountLabel)], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])
//                //"\n剩余金额"
//            }else{
//                //                surplusAmountAttStr = handlerInvest("剩余可投  ", String(format: "%.0f", surplusAmount), "元")
//                surplusAmount.attributedText = handlerRichText([String(format: "%.0f", surplusAmountValue),"元",String(format: "\n%@", detailModel.surplusAmountLabel)], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])
//                //"\n剩余金额"
//            }
//            if  productsScaleValue > 9999 {
//                productsScale.attributedText = handlerRichText([String(format: "%.2f", productsScaleValue/10000.0),"万",String(format: "\n%@", detailModel.productsScaleLabel)], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])
//                //"\n项目总额"
//            }else{
//                productsScale.attributedText = handlerRichText([String(format: "%.0f", productsScaleValue),"元",String(format: "\n%@", detailModel.productsScaleLabel)], [UIColor.white,UIColor.white,UIColor.white], [Font_WL(17),Font_WL(11),Font_WL(11)])//"\n项目总额"
//
//            }
////            titleOneLab.text = "起投金额"
////            titleTwoLab.text = "投资期限"
//////            titleThreeLab.text = "投资限额"
////
////            valueOneLab.attributedText = handlerDataAndMoney(String(format: "%.f", productModel.investBegin.cGFloat), "元")
////            valueTwoLab.attributedText = handlerDataAndMoney(String(format: "%.f", productModel.plstimeLimitValue.cGFloat), productModel.plstimeLimitType == "0" ? "天" : "月")
////            valueThreeLab.attributedText = handlerMoney(NSString(moneyNoPoint: productModel.investEnd) as String)
//        }
//    }
//    func handlerProfit(_ str1: String, _ str2: String) -> NSMutableAttributedString {
//
//        let str11 = String(format: "%.2f", str1.cGFloat * 100)
//
//        let temp = NSMutableAttributedString(string: str11, attributes: [NSFontAttributeName: BoldFont_WL(30)])
//        temp.append(NSAttributedString(string: "%", attributes: [NSFontAttributeName: BoldFont_WL(30)]))
//        if str2.isEmpty {
//            return temp
//        }else{
//            let str22 = String(format: "%.2f", str2.cGFloat * 100)
//            temp.append(NSAttributedString(string: "+\(str22)%", attributes: [NSFontAttributeName: BoldFont_WL(30)]))
//            return temp
//        }
//    }
//    func handlerDataAndMoney(_ str1: String, _ str2: String) -> NSMutableAttributedString {
//
//
//        let temp = NSMutableAttributedString(string: str1, attributes: [NSFontAttributeName: Font_WL(15)])
//
//        temp.append(NSAttributedString(string: "\(str2)", attributes: [NSFontAttributeName: Font_WL(15)]))
//        return temp
//
//    }
//    func handlerMoney(_ str1: String) -> NSMutableAttributedString {
//
//
//        let temp = NSMutableAttributedString(string: str1)
//
//        temp.addAttributes([NSFontAttributeName : Font_WL(15)], range: NSRange(location: 0, length: str1.count-1))
//        temp.addAttributes([NSFontAttributeName : Font_WL(15)], range: NSRange(location: str1.count-1, length: 1))
//
//        return temp
//
//    }
//    func initUI() {
//
//        self.addSubview(redImg)
//        redImg.snp.makeConstraints { (make) in
//            make.top.equalTo(0)
//            make.left.equalTo(10)
//            make.right.bottom.equalTo(-10)
//
//        }
//
//        self.addSubview(tagsView)
//
//        self.addSubview(self.titleLab)
//        titleLab.snp.makeConstraints { (make) in
//            make.top.equalTo(40)
//            make.height.equalTo(10)
//            make.centerX.equalToSuperview()
//        }
//
//        self.addSubview(self.profitLab)
//        profitLab.snp.makeConstraints { (make) in
//            make.top.equalTo(titleLab.snp.bottom).offset(10)
//            make.centerX.equalToSuperview()
//            make.height.equalTo(30)
//        }
//
//        // 横线view
//        let lineView = UIView()
//        lineView.backgroundColor = UIColor.white
//        self.addSubview(lineView)
//        lineView.snp.makeConstraints { (make) in
//
//            make.top.equalTo(profitLab.snp.bottom).offset(20)
//            make.left.equalTo(35)
//            make.right.equalTo(-35)
//            make.height.equalTo(0.5)
//        }
//        self.addSubview(plstimeLimitValue)
//        self.addSubview(surplusAmount)
//        self.addSubview(productsScale)
//        let arr = [plstimeLimitValue,surplusAmount,productsScale]
//        //        axisType:方向
//        //        fixedSpacing:中间间距
//        //        leadSpacing:左边距(上边距)
//        //        tailSpacing:右边距(下边距)
//        arr.snp.distributeViewsAlong(axisType: .horizontal, fixedSpacing: 0.5, leadSpacing: 15, tailSpacing: 15)
//        //        上面的可以约束x+w,还需要另外约束y+h
//        //        约束y和height()如果方向是纵向,那么则另外需要设置x+w
//        arr.snp.makeConstraints{
//            $0.top.equalTo(lineView.snp.bottom)
//            $0.bottom.equalTo(redImg.snp.bottom).offset(-5)
//        }
//
//        // 竖线1
//        let line1View = UIView()
//        line1View.backgroundColor = UIColor.white
//        self.addSubview(line1View)
//        line1View.snp.makeConstraints { (make) in
//
//            make.left.equalTo(plstimeLimitValue.snp.right)
//            make.right.equalTo(surplusAmount.snp.left)
//            make.height.equalTo(25)
//            make.centerY.equalTo(surplusAmount)
//        }
//        // 竖线2
//        let line2View = UIView()
//        line2View.backgroundColor = UIColor.white
//        self.addSubview(line2View)
//        line2View.snp.makeConstraints { (make) in
//
//            make.left.equalTo(surplusAmount.snp.right)
//            make.right.equalTo(productsScale.snp.left)
//            make.height.equalTo(25)
//            make.centerY.equalTo(surplusAmount)
//        }
//
//    }
//
//    /// 渐变的图片
//    lazy var redImg: UIImageView = {
//        let redImg = UIImageView()
//        redImg.image = UIImage(named: "details_bg")
//        return redImg
//    }()
//    /// 历史年化收益率
//    lazy var profitLab :UILabel = {
//        let profit = UILabel()
//        profit.textColor = UIColor.white
//        profit.font = BoldFont_WL(30)
//        profit.text = ""
//        profit.textAlignment = .center
//        return profit
//    }()
//    lazy var tagsView: GuoHuiJRActiveTagView = {
//        let temp = GuoHuiJRActiveTagView(UIColor.clear, UIColor.white, UIColor.white, true, "")
//
//        return temp
//    }()
//    /// 标题
//    lazy var titleLab :UILabel = {
//        let title = UILabel()
//        title.textAlignment = .center
//        title.textColor = UIColor.white
//        title.font = Font_WL(10)
////        title.text = "历史年化收益率"
//        return title
//    }()
//
//    /// 投资期限
//    lazy var plstimeLimitValue : UILabel = {
//        let temp = UILabel()
//        temp.textAlignment = .center
//        temp.textColor = UIColor.white
//        temp.font = Font_WL(11)
//        temp.text = "投资期限"
//        temp.numberOfLines = 2
//        return temp
//    }()
//    /// surplusAmount剩余金额
//    lazy var surplusAmount : UILabel = {
//        let temp = UILabel()
//        temp.textAlignment = .center
//        temp.textColor = UIColor.white
//        temp.font = Font_WL(11)
//        temp.text = "投资期限"
//        temp.numberOfLines = 2
//        return temp
//    }()
//    /// productsScale项目总额
//    lazy var productsScale : UILabel = {
//        let temp = UILabel()
//        temp.textAlignment = .center
//        temp.textColor = UIColor.white
//        temp.font = Font_WL(11)
////        temp.text = "项目总额"
//        temp.numberOfLines = 2
//        return temp
//    }()
//    ///
//    /// 底部的提示
//    lazy var bottomLab: UILabel = {
//        let temp  = UILabel()
//        temp.textAlignment = .right
//        temp.textColor = Normal_999Color
//        temp.font = Font_WL(10)
//        temp.text = "*具体日期以实际日期为准"
//        return temp
//    }()
//
//
//}
//
//
//
//
