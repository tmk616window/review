class AddColumnTasks < ActiveRecord::Migration[6.0]
  def change
        add_column :tasks, :task_id, :integer
        add_column :tasks, :task_user_email, :integer
        add_column :tasks, :user_email, :text
        add_column :tasks, :design, :text
        add_column :tasks, :design_point, :integer
        add_column :tasks, :function, :text
        add_column :tasks, :function_point, :integer
        add_column :tasks, :plan, :text
        add_column :tasks, :plan_point, :integer
        add_column :tasks, :unique, :text
        add_column :tasks, :unique_point, :integer
        add_column :tasks, :user_perspective, :text
        add_column :tasks, :user_perspective_point, :integer
        add_column :tasks, :recruit, :string
        add_column :tasks, :field, :string
        add_column :tasks, :task_old, :integer
        add_column :tasks, :task_pl, :string
        add_column :tasks, :task_tool, :string
        add_column :tasks, :github_url, :text
        add_column :tasks, :work_explain, :text
        add_column :tasks, :study_period, :integer
        add_column :tasks, :company_info, :string
        add_column :tasks, :task_coment, :text
  end
end
