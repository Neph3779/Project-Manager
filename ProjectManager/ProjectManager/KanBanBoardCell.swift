//
//  KanBanBoardCell.swift
//  ProjectManager
//
//  Created by 천수현 on 2021/07/19.
//

import UIKit

class KanBanBoardCell: UITableViewCell {

    static let reuseIdentifier = "kanBanBoardCell"

    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "titleLabel"
        label.font = UIFont.preferredFont(forTextStyle: .title2)
        return label
    }()

    let descriptionPreviewLabel: UILabel = {
        let label = UILabel()
        label.text = "descriptionPreviewLabel"
        label.font = UIFont.preferredFont(forTextStyle: .body)
        return label
    }()

    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "dateLabel"
        label.font = UIFont.preferredFont(forTextStyle: .subheadline)
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(titleLabel)
        contentView.addSubview(descriptionPreviewLabel)
        contentView.addSubview(dateLabel)

        titleLabel.snp.makeConstraints { label in
            label.leading.equalTo(contentView).inset(10)
            label.top.equalTo(contentView).inset(10)
        }

        descriptionPreviewLabel.snp.makeConstraints { label in
            label.leading.equalTo(contentView).inset(10)
            label.top.equalTo(titleLabel.snp.bottom).offset(10)
        }

        dateLabel.snp.makeConstraints { label in
            label.leading.equalTo(contentView).inset(10)
            label.top.equalTo(descriptionPreviewLabel.snp.bottom).offset(10)
            label.bottom.equalTo(contentView.snp.bottom).inset(10)
        }
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}