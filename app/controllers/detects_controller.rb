class DetectsController < ApplicationController
  before_action :authenticate_user!
  def index
  	@detects = Detect.all
  end

  def new
  	@detect = Detect.new
  end

  def create
  	@detect = Detect.new(detect_params)
  	uploaded_io = params[:detect][:attachment]
  	x= uploaded_io.original_filename
   if @detect.save
   	 results = Uirusu::VTFile.scan_file("35b8eb9e39177994d4129f5f5039c9e9ead034217b2d46f613eb7f246a82314d", "#{Rails.root}/public/uploads/file/attachment/"+"#{x}", notify_url: 'http://requestb.in/117n0hb1')
        k =JSON.parse(results.to_json)
        has =k['md5']
        resultss = Uirusu::VTFile.query_report("35b8eb9e39177994d4129f5f5039c9e9ead034217b2d46f613eb7f246a82314d", has)
        result = Uirusu::VTResult.new(has, resultss) 
        #result = Uirusu::VTResult.new(has, results)
        @r =JSON.parse(result.to_json)
	     
         # render json: r[3]['vtresult']['scanner']
         # render json: @r.count
        
          render 'detects/index.html.erb' 
  end
end

   private
     def detect_params
     	params.require(:detect).permit(:attachment)
     end
 end