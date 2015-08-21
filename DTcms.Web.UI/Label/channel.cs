using System;
using System.Collections.Generic;
using System.Text;
using System.Data;

namespace DTcms.Web.UI
{
    public partial class BasePage : System.Web.UI.Page
    {
        /// <summary>
        /// 返回类别导航面包屑
        /// </summary>
        /// <param name="urlKey">URL重写Name</param>
        /// <param name="category_id">类别ID</param>
        /// <returns>String</returns>
        protected string get_channel_menu(string urlKey, int category_id)
        {
            StringBuilder strTxt = new StringBuilder();
            if (category_id > 0)
            {
                LoopChannelMenu(strTxt, urlKey, category_id);
            }
            return strTxt.ToString();
        }

        /// <summary>
        /// 返回类别列表
        /// </summary>
        /// <param name="channel_name">频道名称</param>
        /// <param name="parent_id">父类别ID</param>
        /// <returns>DataTable</returns>
        protected DataTable get_channel_list(string channel_name, int parent_id)
        {
            return new BLL.article_category().GetList(parent_id, channel_name);
        }

        protected Model.channel get_channel(string channel_name)
        {
            return new BLL.channel().GetModel(channel_name);
        }

        #region 私有方法===========================================
        
        #endregion
    }
}
